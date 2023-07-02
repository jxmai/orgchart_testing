<!--Note: source code is referred to:  https://github.com/dabeng/OrgChart/blob/master/demo/responsive-design.html with modifications-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Organization Chart Plugin</title>
  <link rel="stylesheet" href="css/jquery.orgchart.css">
  <link rel="stylesheet" href="css/style.css">
  <style type="text/css">
    #chart-container { height:  620px; }
    .orgchart { background: white; }
  </style>
</head>
<body>
  <div id="chart-container"></div>

  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.orgchart.js"></script>
  <script type="text/javascript">
    $(function() {

    var datascource = {
      'name': 'Lao Lao',
      'title': 'general manager',
      'children': [
        { 'name': 'Bo Miao', 'title': 'department manager' },
        { 'name': 'Su Miao', 'title': 'department manager',
          'children': [
            { 'name': 'Tie Hua', 'title': 'senior engineer' },
            { 'name': 'Hei Hei', 'title': 'senior engineer',
              'children': [
                { 'name': 'Pang Pang', 'title': 'engineer' },
                { 'name': 'Dan Dan', 'title': 'UE engineer' ,
                'children': [
                  { 'name': 'Er Dan', 'title': 'engineer' },
                  { 'name': 'San Dan', 'title': 'engineer',
                    'children': [
                      { 'name': 'Si Dan', 'title': 'intern' },
                      { 'name': 'Wu Dan', 'title': 'intern' }
                    ]
                  }
                ]}
              ]
            }
          ]
        },
        { 'name': 'Hong Miao', 'title': 'department manager' },
        { 'name': 'Chun Miao', 'title': 'department manager',
          'children': [
            { 'name': 'Bing Qin', 'title': 'senior engineer' },
            { 'name': 'Yue Yue', 'title': 'senior engineer',
              'children': [
                { 'name': 'Er Yue', 'title': 'engineer' },
                { 'name': 'San Yue', 'title': 'UE engineer' }
              ]
            }
          ]
        }
      ]
    };

    var oc = $('#chart-container').orgchart({
      'data' : datascource,
      'nodeContent': 'title',
    });

    /* $(window).resize(function() {
      var width = $(window).width();
      if(width > 576) {
        oc.init({'verticalLevel': undefined});
      } else {
        oc.init({'verticalLevel': 2});
      }
    }); */

  });
  </script>
  </body>
</html>
