function getTable(findings) {
  var str = '';

  str +='<table>' +
          '<tr>' +
            '<th>Age</th>' +
            '<th>Height</th>' +
            '<th>Address</th>' +
          '</tr>';
  for (var i=0 ; i<findings.length; i++) {
    var finding = findings[i];
    str += '<tr>' +
              '<td>' + finding.age + '</td>'+
              '<td>' + finding.height + '</td>'+
              '<td>' + finding.address + '</td>'+
            '</tr>';
  }
  str += '</table>';
  return str;
}

function fetchFindings() {
  // Without Web Service
  // $.ajax('/fndfrancis/fetch_findings.php',{
  //   method: 'GET'
  // }).done(function (response) {
  //   $('.finding_list').append(response);
  // }).fail(function () {
  //   alert('Could not fetch findings');
  // });

  $.ajax('/fndfrancis/findings_service.php',{
    method: 'GET'
  }).done(function (response) {
    var findings = JSON.parse(response);
    var tableStr = getTable(findings);
    $('.finding_list').html(tableStr);
  }).fail(function () {
    debugger;
  });


}

$(document).ready(function(){
  fetchFindings();
  $('button').click(function() {
    var age = $('#age').val();
    var height= $('#height').val();
    var address = $('#address').val();

    $.ajax('/fndfrancis/save_finding.php',{
      method: 'POST',
      data: {
        age: age,
        height: height,
        address: address
      }
    }).done(function (response) {
      if (response==='1'){
        var newRow = '<tr><td>'+ age +'</td><td>'+ height +'</td><td>'+address+'</td></tr>';
        $('table').append(newRow);
        $('#age').val("");
        $('#height').val("");
        $('#address').val("");
      } else {
        alert('Could not save findings');
      }
    }).fail(function () {
      alert('Server down Please try again later');
    });
  });
});
