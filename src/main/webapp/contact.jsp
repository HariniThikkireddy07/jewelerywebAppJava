<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us — Lumiera Jewels</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
    <div class="navbar">
        <a href="index.jsp" class="logo">
            LUMIERA
            <span>FINE JEWELLERY</span>
        </a>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="products">Collections</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp" class="active">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>

<div class="container">
    <h2 class="section-title">Get in Touch</h2>
    <p class="section-subtitle">We'd love to hear from you — visit, call, or write to us</p>

    <div class="page-content">
        <div class="contact-wrapper">
            <!-- Left Column: Contact Information -->
            <div class="contact-info">
                <h2>Visit Our Boutique</h2>

                <div class="info-block">
                    <div class="info-icon">📍</div>
                    <div class="info-text">
                        <h4>Address</h4>
                        <p>
                            Lumiera Fine Jewellery<br>
                            42 Diamond Avenue, Opera House<br>
                            Mumbai, Maharashtra 400001<br>
                            India
                        </p>
                    </div>
                </div>

                <div class="info-block">
                    <div class="info-icon">📞</div>
                    <div class="info-text">
                        <h4>Phone</h4>
                        <p>
                            Main: +91 22 1234 5678<br>
                            Mobile: +91 98765 43210<br>
                            WhatsApp: +91 98765 43210
                        </p>
                    </div>
                </div>

                <div class="info-block">
                    <div class="info-icon">✉️</div>
                    <div class="info-text">
                        <h4>Email</h4>
                        <p>
                            Customer Care: care@lumierajewels.com<br>
                            Sales: sales@lumierajewels.com<br>
                            Support: support@lumierajewels.com
                        </p>
                    </div>
                </div>

                <div class="info-block">
                    <div class="info-icon">🕒</div>
                    <div class="info-text">
                        <h4>Store Hours</h4>
                        <p>
                            Monday – Friday: 10:00 AM – 8:00 PM<br>
                            Saturday: 10:00 AM – 9:00 PM<br>
                            Sunday: 12:00 PM – 6:00 PM<br>
                            <em>Closed on national holidays</em>
                        </p>
                    </div>
                </div>

                <div class="info-block">
                    <div class="info-icon">🌐</div>
                    <div class="info-text">
                        <h4>Follow Us</h4>
                        <p>
                            Instagram: @lumierajewels<br>
                            Facebook: /lumierajewels<br>
                            Pinterest: /lumierajewels
                        </p>
                    </div>
                </div>
            </div>

            <!-- Right Column: Contact Form -->
            <div class="contact-form-wrapper">
                <h2>Send Us a Message</h2>
                <p style="color: #666; margin-bottom: 25px;">
                    Fill out the form below and our team will respond within 24 hours.
                </p>

                <form class="contact-form" action="#" method="post"
                      onsubmit="alert('Thank you for contacting Lumiera Jewels! We will get back to you within 24 hours.'); return false;">

                    <div class="form-group">
                        <label for="name">Full Name *</label>
                        <input type="text" id="name" name="name"
                               placeholder="Enter your full name" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email Address *</label>
                        <input type="email" id="email" name="email"
                               placeholder="you@example.com" required>
                    </div>

                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="tel" id="phone" name="phone"
                               placeholder="+91 98765 43210"
                               pattern="[+]?[0-9\s\-]{7,20}">
                    </div>

                    <div class="form-group">
                        <label for="subject">Subject *</label>
                        <select id="subject" name="subject" required>
                            <option value="">-- Select a topic --</option>
                            <option value="general">General Inquiry</option>
                            <option value="product">Product Information</option>
                            <option value="order">Order Status</option>
                            <option value="custom">Custom Design Request</option>
                            <option value="repair">Repair &amp; Servicing</option>
                            <option value="feedback">Feedback</option>
                            <option value="other">Other</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="message">Message *</label>
                        <textarea id="message" name="message" rows="6"
                                  placeholder="Tell us how we can help you..."
                                  required></textarea>
                    </div>

                    <div class="form-group checkbox-group">
                        <input type="checkbox" id="newsletter" name="newsletter" checked>
                        <label for="newsletter">
                            Subscribe to our newsletter for exclusive offers and new collections
                        </label>
                    </div>

                    <button type="submit" class="btn" style="width: 100%;">
                        Send Message
                    </button>
                </form>

                <p style="margin-top: 20px; font-size: 13px; color: #888; text-align: center;">
                    By submitting this form, you agree to our privacy policy.
                </p>
            </div>
        </div>

        <!-- Map / Location Section -->
        <div class="map-section">
            <h2>Find Us on the Map</h2>
            <div class="map-placeholder">
                <iframe
                    src="https://www.openstreetmap.org/export/embed.html?bbox=72.815%2C18.920%2C72.840%2C18.940&amp;layer=mapnik"
                    width="100%"
                    height="350"
                    style="border:0; border-radius: 8px;"
                    loading="lazy">
                </iframe>
            </div>
        </div>

        <!-- FAQ Section -->
        <div class="faq-section">
            <h2>Frequently Asked Questions</h2>

            <div class="faq-item">
                <h4>Do you offer custom jewellery design?</h4>
                <p>Yes! Our master artisans can create bespoke pieces tailored to your vision.
                   Book a consultation with our design team to get started.</p>
            </div>

            <div class="faq-item">
                <h4>What is your return policy?</h4>
                <p>We offer a 30-day return policy on all unworn items in original packaging
                   with the certificate of authenticity. Custom pieces are non-refundable.</p>
            </div>

            <div class="faq-item">
                <h4>Do you provide jewellery certification?</h4>
                <p>Absolutely. Every piece comes with a certificate of authenticity and, for
                   diamonds and gemstones, an independent grading report.</p>
            </div>

            <div class="faq-item">
                <h4>Do you ship internationally?</h4>
                <p>Yes, we ship worldwide with fully insured, tracked delivery. Shipping charges
                   and duties are calculated at checkout.</p>
            </div>

            <div class="faq-item">
                <h4>Can I book a virtual appointment?</h4>
                <p>Yes, we offer virtual consultations via video call. Contact us at
                   sales@lumierajewels.com to schedule yours.</p>
            </div>
        </div>
    </div>
</div>

<footer>
    <p class="gold">LUMIERA FINE JEWELLERY</p>
    <p>Crafting timeless treasures since 1995</p>
    <p>&copy; 2025 Lumiera Jewels. All rights reserved.</p>
</footer>

</body>
</html>
