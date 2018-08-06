<html>

   <head>
      <title>The jQuery Example</title>
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
      <script type = "text/javascript" language = "javascript">
         $(document).ready(function() {
			
            $("#div1").click( function () {
               $("#div2").trigger('click');
            });

            $("#div2").click( function () {
               alert( "Square TWO is clicked");
            });
				
         });
      </script>
		
      <style>
         div{ margin:10px;padding:12px; border:2px solid #666; width:60px;}
      </style>
   </head>
	
   <body>
	
      <span>Click square ONE to see the result:</span>
		
      <div id = "div1" style = "background-color:blue;">ONE</div>
      <div id = "div2" style = "background-color:blue;">TWO</div>
		
   </body>
	
</html>