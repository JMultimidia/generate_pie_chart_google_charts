<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<title>Sample chart with local data</title>

	<!-- Load google APIe -->
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>

	<!-- Prepare the graph generation -->
	<script type="text/javascript">
		// load the visualization API and the necessary packages.
		google.load('visualization', '1.0', {
			'packages': ['corechart']
		});

		// Specify a callback to be executed when the API is loaded.
		google.setOnLoadCallback(drawChart);

		/**
		 * Function that fills in the chart data
		 */
		function drawChart() {
			// Assemble the data used by the chart
			var dados = new google.visualization.DataTable();
			dados.addColumn('string', 'Genre');
			dados.addColumn('number', 'Quantities');
			dados.addRows([
				['Masculine', 14],
				['Feminine', 20]
			]);

			// Chart settings
			var config = {
				'title': 'Number of customers by gender',
				'width': 400,
				'height': 300
			};

			// Instantiate the pie chart generation object, informing the HTML element where the graphic will be drawn.			
			var chart = new google.visualization.PieChart(document.getElementById('area_graphic'));

			// Desenhar o grafico (usando os dados e as configuracoes criadas)
			chart.draw(dados, config);
		}
	</script>
</head>

<body>
	<div id="area_graphic"></div>
</body>

</html>