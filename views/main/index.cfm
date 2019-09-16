<cfoutput>

<p>
Open the browser console and refresh the page if needed. You should be able to see the problems we're having in a couple of ways.
</p>

<p>
In the console, you should already see an error about "Uncaught ReferenceError: $ is not defined at (index):50". This is due to the use of "$" trying to referene jQuery within script tags on the view "/views/main/index.cfm.
</p>

<p>
Also, copy and paste the following function call to try and run the "timesTwo()" function located in '/resources/assets/js/app.js' which is referenced in webpack.config.js...
<br>
<br>
timesTwo(4)

<br>
<br>
</p>

This input field is just used to test out the javascript usage on the same view referenced above.
<br>
<input id="dummyInput" value="hello">

</cfoutput>

<script>
    console.log(document.getElementById("dummyInput").value);
    console.log($("#dummyInput").val());
</script>
