from fpdf import FPDF


class PDF(FPDF):
	def header(self):
		# Select Arial bold 15
		self.set_font('Arial', 'B', 15)
		# Framed title
		self.cell(0, 10, 'Result Report', 1, 0, 'C')
		# Line break
		self.ln(20)


# pdf.cell(w, h = 0, txt = '', border = 0, ln = 0, align = '', fill = False, link = '')

pdf = PDF()
pdf.add_page()
pdf.set_font('Arial', '', 12)
# pdf.cell(0, 10, 'The following report unravels mystery that lies within the result',ln = 1)

for i in range(1, 9):
	pdf.cell(0, 10, 'Plot ' + str(i), ln = 1)
	pdf.image('temp/img' + str(i) + '.jpg', x = 10, h = 110)

pdf.output('tuto1.pdf', 'F')
