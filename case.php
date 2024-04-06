<?php
	$conn = mysqli_connect("localhost", "root", "", "pcparts", "3306");

	$columns = array('name','price');
	$column = isset($_GET['column']) && in_array($_GET['column'], $columns) ? $_GET['column'] : $columns[0];
	$sort_order = isset($_GET['order']) && strtolower($_GET['order']) == 'desc' ? 'DESC' : 'ASC';

	if ($result = $conn->query('SELECT * FROM cases ORDER BY ' .  $column . ' ' . $sort_order)) {

	$up_or_down = str_replace(array('ASC','DESC'), array('up','down'), $sort_order); 
	$asc_or_desc = $sort_order == 'ASC' ? 'desc' : 'asc';
	$add_class = ' class="highlight"';
?>

<!DOCTYPE html>
<html>

<script
	src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous"></script>

<script>
	$(function(){
		$("#head").load("head.html");
		$("#foot").load("foot.html");
		$("#nav").load("nav.html");
	});
</script>

	<div id="head"></div>
		
	<body>
	
		<nav id="nav"></nav>
		
		<div class="wrapper">
				<div class="search_box">
					<input type="text" placeholder="Search for Parts...">
					<img src="icons/search.png" alt="search">
				</div>
		</div>
		
		<hr>
		
		<div class="product">
			<p>Cases</p>
			<hr>
		</div>
		
		<div class="table">
			<table>
				<tr>
					<th><a href="case.php?column=name&order=<?php echo $asc_or_desc; ?>">Name<i class="fas fa-sort<?php echo $column == 'name' ? '-' . $up_or_down : ''; ?>"></i></a></th>
					<th>Type</th>
					<th>Side Panel</th>
					<th><a href="case.php?column=price&order=<?php echo $asc_or_desc; ?>">Price<i class="fas fa-sort<?php echo $column == 'price' ? '-' . $up_or_down : ''; ?>"></i></a></th>
				</tr>
				<?php while ($row = $result->fetch_assoc()): ?>
				<tr>
					<td <?php echo $column == 'name' ? $add_class : ''; ?>><?php echo $row['name']; ?></td>
					<td><?php echo $row['type']; ?></td>
					<td><?php echo $row['sidepan']; ?></td>
					<td <?php echo $column == 'price' ? $add_class : ''; ?>>$<?php echo $row['price']; ?></td>
				</tr>
				<?php endwhile; ?>
			</table>
		</div>

	</body>

	<div id="foot"></div>

</html>
<?php $result->free();} ?>
