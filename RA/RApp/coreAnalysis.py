#LIBRARIES
import pandas as pd

final_analysis = pd.DataFrame()

def exportData(listOfDataFrames):
    pass

def checkpass(x,val, i):
    if x == 'Ab':
        return 0
    return int(int(x)>val)


def checkrange(x, p,q):
    if x == 'Ab':
        return 0
    return int(p < int(str(x).strip()) and int(str(x).strip())< q)


def clean(x):
    if x == 'Ab':
        return int(0)

        ########################
        ## Might need changes
    if '\r' in str(x):
        x = x[:x.index('\r')]
        ########################
    x = list(str(x))
    if x[-1] == 'E' or x[-1] == 'F':
        return "".join(x[:-1]).strip()
    else:
        return "".join(x)


def createTotalMarksDF(inputfilepath):
    ############################################################

    # READ FILE + DROP NULL COLUMNS
    original_file = pd.read_excel(inputfilepath)
    # original_file = pd.read_excel('data/Result-Format1.xlsx')
    # original_file = pd.read_excel('data/Result-Format2.xls')
    # original_file = pd.read_excel('data/Result-Format3-Elective.xls')
    # original_file = pd.read_excel('data/Result-Format3-Elective2.xls')

    # remove rows wiht all na
    original_file.dropna(how = "all", inplace = True)

    # remove redundant column
    original_file.drop(['Unnamed: 1'], axis = 1, inplace = True)
    original_file = original_file.iloc[:, :-1]

    # scrap part of original dataframe
    original_file1 = original_file.iloc[3:, :]
    original_file1 = original_file1.dropna(axis = 'columns', how = 'all')

    # regenerating old file for selected columns only
    original_file = original_file.loc[:, original_file1.columns]

    ############################################################
    ############################################################

    # Working with Header for further use
    curr_header = [str(i) for i in original_file.iloc[2, :].values]
    add_details = [str(i) for i in original_file.iloc[3, :].values]

    header = ['SEAT', 'TOTAL', 'SGPI', 'RESULT']

    for i in range(1, len(curr_header) - 4):
        j = i
        while curr_header[j] == 'nan':
            j = j - 1
        header.insert(-3, (curr_header[j].strip() + '-' + add_details[i].strip()))

    header_later = header.copy()
    header_later.insert(1, 'NAME')

    ############################################################
    ############################################################

    # Creating a list of subject names and codes and mapping them
    subjectlist = [i for i in curr_header if i != 'nan']
    subjectcode = [i for i in original_file.iloc[1, :].values[1:-4] if str(i) != 'nan']
    subjectcodes = dict(zip(subjectcode, subjectlist))

    ############################################################
    ############################################################

    # Creating a dataframe to work on
    df = original_file1.iloc[:, :]
    df = df.loc[df['Unnamed: 2'].isna() == False]

    # removing CGPA column
    df = df.iloc[:, :-1]

    df.columns = header

    df = df.iloc[3:, :]

    # dataframe to store marks
    dfmarks = df.iloc[::2]

    # dataframe that stores names
    dfnames = df.iloc[1::2]

    # adding names to the marks dataframe
    dfmarks = dfmarks.copy()
    dfmarks['NAME'] = dfnames.loc[:, 'SEAT'].values
    dfmarks = dfmarks.loc[:, header_later]

    dfmarks.index = pd.RangeIndex(1, len(dfmarks.index) + 1)

    ############################################################
    ############################################################

    # to clean the columns

    for i in range(1, len(dfmarks.columns) - 3):
        dfmarks.iloc[:, i] = dfmarks.iloc[:, i].apply(clean)

    ############################################################
    ############################################################

    # fetching the total columns

    labstr = subjectcode[-1][:3]
    totalsubs = []
    for k, v in subjectcodes.items():
        if labstr not in k:
            totalsubs.append(v)
    if len(totalsubs) == 0:
        totalsubs = subjectlist.copy()
    df_header = list(dfmarks.columns)
    totalcols = df_header[:2] + [str(i.strip() + '-TOT') for i in totalsubs] + df_header[-3:]

    ############################################################
    ############################################################

    # TOTAL MARKS DATAFRAME

    dftotalmarks = dfmarks[totalcols]

    dftotalmarks = dftotalmarks.loc[:, ~dftotalmarks.columns.duplicated()]

    ############################################################
    ############################################################

    # Return FINAL DF for Graphing
    return dftotalmarks

    ############################################################

def createFinalAnalysisDF(dftotalmarks):
    passing = pd.DataFrame()

    totalcols = list(dftotalmarks.columns)

    passing['Topper'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 9.3))

    for i in totalcols[2:-3]:
        passing[i.replace('TOT', 'PASSED')] = dftotalmarks[i].apply(lambda x: checkpass(x, 40, i))

    for i in totalcols[2:-3]:
        passing[i.replace('TOT', '40<X<50')] = dftotalmarks[i].apply(lambda x: checkrange(x, 40, 50))
        passing[i.replace('TOT', '50<X<60')] = dftotalmarks[i].apply(lambda x: checkrange(x, 50, 60))
        passing[i.replace('TOT', 'X>60')] = dftotalmarks[i].apply(lambda x: checkrange(x, 60, 100))

    passing['SGPI < 40'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) < 4))
    passing['40 < SGPI < 50'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 3.9 and float(x) < 5.1))
    passing['50 < SGPI < 60'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 5.0 and float(x) < 6.1))
    passing['60 < SGPI < 70'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 6.0 and float(x) < 7.1))
    passing['70 < SGPI < 80'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 7.0 and float(x) < 8.1))
    passing['80 < SGPI < 90'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 8.0 and float(x) < 9.1))
    passing['90 < SGPI < 100'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 9.0 and float(x) < 10.1))

    passing['Perfect 100'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) == 10))

    ############################################################
    ############################################################

    # Export Files
    global final_analysis
    final_analysis = pd.concat([dftotalmarks, passing], axis = 1)

    return final_analysis
