<script>
function toggleMenu() {
  document.getElementById("navLinks").classList.toggle("active");
}
</script>

<div class="topNav">
  <div class="menu-toggle" onclick="toggleMenu()">☰</div>
	<div class="nav-links" id="navLinks">
		<a href="../Home">Home</a>
		<div class="drop">
			<button class="dropbtn">Who We Are</button>
			<div class="drop-content">
				<a href="../MissionS">Mission Statement & Vision</a>
				<a href="../BOD">Board of Directors</a>
			</div>
		</div>
		<div class="drop">
			<button class="dropbtn">Services</button>
			<div class="drop-content">
				<a href="../Eligibility">Eligibility & Ceremonies</a>
			</div>
		</div>
		<a href="../Memories">Memories</a>
		<a href="../Contact">Contact</a>
		<a href="../Sponsorships">Sponsors</a>
		<a href="../HelpTheCause">Help Our Cause</a>
		<a href="../PrivacyPolicy">Privacy Policy</a>
		<a href="../FAQ">FAQ</a>
	</div>
</div>