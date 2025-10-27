<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BULBULE TAILORS AND GARMENTS</title>
  <style>
    /* Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background: #f9f9f9;
      color: #333;
    }

    /* Header */
    header {
      background: linear-gradient(135deg, #1a1a1a, #444);
      color: white;
      text-align: center;
      padding: 60px 20px;
      position: relative;
      overflow: hidden;
    }

    header h1 {
      font-size: 2.5rem;
      letter-spacing: 2px;
      text-transform: uppercase;
      animation: fadeInDown 1.5s ease;
    }

    header p {
      margin-top: 10px;
      font-size: 1.2rem;
      animation: fadeInUp 2s ease;
    }

    /* Navigation */
    nav {
      display: flex;
      justify-content: center;
      background: #222;
      padding: 15px;
      position: sticky;
      top: 0;
      z-index: 100;
    }

    nav a {
      color: white;
      text-decoration: none;
      margin: 0 20px;
      font-weight: 500;
      position: relative;
    }

    nav a::after {
      content: "";
      display: block;
      width: 0;
      height: 2px;
      background: #ff9800;
      transition: width 0.3s;
      margin: auto;
    }

    nav a:hover::after {
      width: 100%;
    }

    /* Hero Section */
    .hero {
      background: url('https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=1600&q=80') no-repeat center center/cover;
      height: 80vh;
      display: flex;
      align-items: center;
      justify-content: center;
      color: white;
      text-align: center;
    }

    .hero h2 {
      font-size: 3rem;
      text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
      animation: zoomIn 2s ease;
    }

    /* Services Section */
    .services {
      padding: 50px 20px;
      text-align: center;
    }

    .services h2 {
      font-size: 2rem;
      margin-bottom: 20px;
    }

    .service-boxes {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
      margin-top: 30px;
    }

    .service {
      background: white;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      transition: transform 0.3s, box-shadow 0.3s;
    }

    .service:hover {
      transform: translateY(-10px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }

    .service img {
      width: 100%;
      border-radius: 12px;
      margin-bottom: 15px;
    }

    /* Gallery */
    .gallery {
      padding: 50px 20px;
      background: #f4f4f4;
    }

    .gallery h2 {
      text-align: center;
      margin-bottom: 30px;
    }

    .gallery-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 15px;
    }

    .gallery-grid img {
      width: 100%;
      border-radius: 12px;
      transition: transform 0.3s;
    }

    .gallery-grid img:hover {
      transform: scale(1.05);
    }

    /* Contact */
    .contact {
      padding: 50px 20px;
      text-align: center;
      background: linear-gradient(135deg, #222, #555);
      color: white;
    }

    .contact h2 {
      margin-bottom: 20px;
    }

    .contact p {
      margin: 8px 0;
    }

    /* Footer */
    footer {
      background: #111;
      color: white;
      text-align: center;
      padding: 15px;
      font-size: 0.9rem;
    }

    /* Animations */
    @keyframes fadeInDown {
      from {opacity: 0; transform: translateY(-30px);}
      to {opacity: 1; transform: translateY(0);}
    }

    @keyframes fadeInUp {
      from {opacity: 0; transform: translateY(30px);}
      to {opacity: 1; transform: translateY(0);}
    }

    @keyframes zoomIn {
      from {transform: scale(0.8); opacity: 0;}
      to {transform: scale(1); opacity: 1;}
    }
  </style>
</head>
<body>

  <header>
    <h1>BULBULE TAILORS AND GARMENTS</h1>
    <p>Perfect Fit • Modern Style • Trusted Quality</p>
  </header>

  <nav>
    <a href="#services">Services</a>
    <a href="#gallery">Gallery</a>
    <a href="#contact">Contact</a>
  </nav>

  <section class="hero">
    <h2>Your Style, Our Stitch</h2>
  </section>

  <section class="services" id="services">
    <h2>Our Services</h2>
    <div class="service-boxes">
      <div class="service">
        <img src="https://images.unsplash.com/photo-1581873372796-bf15d9f7ab6b?auto=format&fit=crop&w=800&q=80" alt="Custom Tailoring">
        <h3>Custom Tailoring</h3>
        <p>Perfectly stitched clothes tailored to your body and style.</p>
      </div>
      <div class="service">
        <img src="https://images.unsplash.com/photo-1604908819457-1992c6edcb35?auto=format&fit=crop&w=800&q=80" alt="Garments">
        <h3>Ready-Made Garments</h3>
        <p>Trendy and quality ready-to-wear clothing collection.</p>
      </div>
      <div class="service">
        <img src="https://images.unsplash.com/photo-1503341455253-b2e723bb3dbb?auto=format&fit=crop&w=800&q=80" alt="Alterations">
        <h3>Alterations</h3>
        <p>Expert fitting and quick alterations for all types of clothes.</p>
      </div>
    </div>
  </section>

  <section class="gallery" id="gallery">
    <h2>Our Gallery</h2>
    <div class="gallery-grid">
      <img src="https://images.unsplash.com/photo-1541099649105-f69ad21f3246?auto=format&fit=crop&w=800&q=80" alt="Dress">
      <img src="https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=800&q=80" alt="Suits">
      <img src="https://images.unsplash.com/photo-1507679799987-c73779587ccf?auto=format&fit=crop&w=800&q=80" alt="Fabric">
      <img src="https://images.unsplash.com/photo-1562157873-818bc0726f68?auto=format&fit=crop&w=800&q=80" alt="Tailoring">
    </div>
  </section>

  <section class="contact" id="contact">
    <h2>Contact Us</h2>
    <p>📍 Address: Main Market, Your City</p>
    <p>📞 Phone: +91 8275267890</p>
    <p>📧 Email: info@bulbuletailors.com</p>
  </section>

  <footer>
    <p>© 2025 BULBULE TAILORS AND GARMENTS | All Rights Reserved</p>
  </footer>

</body>
</html>
