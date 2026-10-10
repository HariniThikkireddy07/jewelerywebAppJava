<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.Year" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Contact Lumiera Fine Jewellery — visit our Mumbai boutique, call us, or send a message. We respond within 24 hours.">
    <title>Contact Us — Lumiera Jewels</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/contact.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@400;600;700&family=Montserrat:wght@300;400;500;600&display=swap" rel="stylesheet">
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

<!-- Page Hero Banner -->
<section class="contact-hero">
    <div class="contact-hero-content">
        <p class="breadcrumb"><a href="index.jsp">Home</a> / Contact</p>
        <h1>Let's Talk Jewellery</h1>
        <p>Whether it's a custom design, a repair, or a question about your order — our concierge team is here for you.</p>
    </div>
</section>

<div class="container">

    <!-- Quick Contact Cards -->
    <section class="quick-contact">
        <div class="quick-card">
            <div class="quick-icon">📞</div>
            <h3>Call Us</h3>
            <p>Mon–Sat, 10 AM – 8 PM</p>
            <a href="tel:+912212345678">+91 22 1234 5678</a>
        </div>
        <div class="quick-card">
            <div class="quick-icon">✉️</div>
            <h3>Email Us</h3>
            <p>Response within 24 hours</p>
            <a href="mailto:care@lumierajewels.com">care@lumierajewels.com</a>
        </div>
        <div class="quick-card">
            <div class="quick-icon">💬</div>
            <h3>WhatsApp</h3>
            <p>Quick answers, instantly</p>
            <a href="https://wa.me/919876543210" target="_blank" rel="noopener">+91 98765 43210</a>
        </div>
        <div class="quick-card">
            <div class="quick-icon">📍</div>
            <h3>Visit Boutique</h3>
            <p>Opera House, Mumbai</p>
            <a href="#map">Get Directions →</a>
        </div>
    </section>

    <!-- Main Contact Section -->
    <section class="contact-wrapper">

        <!-- Left Column: Info -->
        <div class="contact-info">
            <h2>Visit Our Boutique</h2>
            <p class="intro-text">
                Step into our flagship store to experience our collections up close. Our jewellery
                consultants offer personalised guidance — no appointment necessary, though we
                recommend booking for bridal consultations.
            </p>

            <div class="info-block">
                <div class="info-icon">📍</div>
                <div class="info-text">
                    <h4>Flagship Boutique</h4>
                    <p>
                        Lumiera Fine Jewellery<br>
                        42 Diamond Avenue, Opera House<br>
                        Mumbai, Maharashtra 400001, India
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
                <div class="info-icon">📞</div>
                <div class="info-text">
                    <h4>Phone &amp; WhatsApp</h4>
                    <p>
                        Boutique: +91 22 1234 5678<br>
                        Mobile: +91 98765 43210<br>
                        Bridal Desk: +91 22 1234 5679
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
                        Press: press@lumierajewels.com
                    </p>
                </div>
            </div>

            <div class="info-block">
                <div class="info-icon">🌐</div>
                <div class="info-text">
                    <h4>Follow Us</h4>
                    <div class="social-links">
                        <a href="#" aria-label="Instagram">Instagram</a>
                        <a href="#" aria-label="Facebook">Facebook</a>
                        <a href="#" aria-label="Pinterest">Pinterest</a>
                        <a href="#" aria-label="YouTube">YouTube</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column: Form -->
        <div class="contact-form-wrapper">
            <h2>Send Us a Message</h2>
            <p class="form-intro">
                Fields marked with <span class="required-star">*</span> are required. We typically
                reply within one business day.
            </p>

            <form class="contact-form" id="contactForm" action="#" method="post" novalidate>
                <div class="form-row">
                    <div class="form-group">
                        <label for="name">Full Name <span class="required-star">*</span></label>
                        <input type="text" id="name" name="name"
                               placeholder="e.g. Aisha Sharma" required minlength="2">
                        <small class="error-msg" data-error-for="name"></small>
                    </div>

                    <div class="form-group">
                        <label for="email">Email Address <span class="required-star">*</span></label>
                        <input type="email" id="email" name="email"
                               placeholder="you@example.com" required>
                        <small class="error-msg" data-error-for="email"></small>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="tel" id="phone" name="phone"
                               placeholder="+91 98765 43210"
                               pattern="[+]?[0-9\s\-()]{7,20}">
                        <small class="error-msg" data-error-for="phone"></small>
                    </div>

                    <div class="form-group">
                        <label for="subject">Subject <span class="required-star">*</span></label>
                        <select id="subject" name="subject" required>
                            <option value="">-- Select a topic --</option>
                            <option value="general">General Inquiry</option>
                            <option value="product">Product Information</option>
                            <option value="order">Order Status</option>
                            <option value="custom">Custom Design Request</option>
                            <option value="bridal">Bridal Consultation</option>
                            <option value="repair">Repair &amp; Servicing</option>
                            <option value="feedback">Feedback</option>
                            <option value="other">Other</option>
                        </select>
                        <small class="error-msg" data-error-for="subject"></small>
                    </div>
                </div>

                <div class="form-group">
                    <label for="message">Message <span class="required-star">*</span></label>
                    <textarea id="message" name="message" rows="6"
                              placeholder="Tell us about your requirement, order number, or question..."
                              required minlength="10" maxlength="1000"></textarea>
                    <div class="char-counter"><span id="charCount">0</span> / 1000</div>
                    <small class="error-msg" data-error-for="message"></small>
                </div>

                <div class="form-group checkbox-group">
                    <input type="checkbox" id="newsletter" name="newsletter" checked>
                    <label for="newsletter">
                        Send me exclusive offers, new collection previews, and styling tips
                    </label>
                </div>

                <div class="form-group checkbox-group">
                    <input type="checkbox" id="consent" name="consent" required>
                    <label for="consent">
                        I agree to the <a href="#" target="_blank">privacy policy</a> and consent
                        to being contacted regarding my inquiry <span class="required-star">*</span>
                    </label>
                    <small class="error-msg" data-error-for="consent"></small>
                </div>

                <button type="submit" class="btn btn-block" id="submitBtn">
                    <span class="btn-text">Send Message</span>
                </button>

                <div class="form-success" id="formSuccess" hidden>
                    <div class="success-icon">✓</div>
                    <h3>Message Sent!</h3>
                    <p>Thank you for reaching out. Our team will respond within 24 hours.</p>
                </div>
            </form>
        </div>
    </section>

    <!-- Map Section -->
    <section class="map-section" id="map">
        <h2 class="section-heading">Find Us on the Map</h2>
        <p class="section-subheading">Conveniently located in the heart of Mumbai's jewellery district</p>
        <div class="map-wrapper">
            <iframe
                src="https://www.openstreetmap.org/export/embed.html?bbox=72.815%2C18.920%2C72.840%2C18.940&amp;layer=mapnik"
                width="100%"
                height="420"
                style="border:0;"
                loading="lazy"
                title="Lumiera Jewels Boutique Location">
            </iframe>
            <div class="map-overlay">
                <h4>Lumiera Fine Jewellery</h4>
                <p>42 Diamond Avenue, Opera House<br>Mumbai 400001</p>
                <a href="https://www.openstreetmap.org/?mlat=18.930&mlon=72.828#map=15/18.930/72.828"
                   target="_blank" rel="noopener" class="btn btn-outline btn-small">
                   Open in Maps →
                </a>
            </div>
        </div>
    </section>

    <!-- FAQ Section -->
    <section class="faq-section">
        <h2 class="section-heading">Frequently Asked Questions</h2>
        <p class="section-subheading">Answers to the questions we hear most often</p>

        <div class="faq-list">

            <details class="faq-item">
                <summary>
                    <span>Do you offer custom jewellery design?</span>
                    <span class="faq-toggle">+</span>
                </summary>
                <div class="faq-content">
                    <p>Yes! Our master artisans can create bespoke pieces tailored to your vision —
                       from engagement rings to heirloom redesigns. Book a consultation with our
                       design team by selecting "Custom Design Request" in the form above.</p>
                </div>
            </details>

            <details class="faq-item">
                <summary>
                    <span>What is your return policy?</span>
                    <span class="faq-toggle">+</span>
                </summary>
                <div class="faq-content">
                    <p>We offer a 30-day return policy on all unworn items in original packaging
                       with the certificate of authenticity. Custom and engraved pieces are
                       non-refundable. Refunds are processed within 5–7 business days.</p>
                </div>
            </details>

            <details class="faq-item">
                <summary>
                    <span>Do you provide jewellery certification?</span>
                    <span class="faq-toggle">+</span>
                </summary>
                <div class="faq-content">
                    <p>Absolutely. Every piece comes with a Lumiera certificate of authenticity.
                       Diamonds and coloured gemstones include an independent grading report
                       from GIA, IGI, or SGL, depending on the stone.</p>
                </div>
            </details>

            <details class="faq-item">
                <summary>
                    <span>Do you ship internationally?</span>
                    <span class="faq-toggle">+</span>
                </summary>
                <div class="faq-content">
                    <p>Yes, we ship worldwide with fully insured, tracked delivery. Shipping charges
                       and applicable duties are calculated at checkout based on your destination
                       and declared value.</p>
                </div>
            </details>

            <details class="faq-item">
                <summary>
                    <span>Can I book a virtual appointment?</span>
                    <span class="faq-toggle">+</span>
                </summary>
                <div class="faq-content">
                    <p>Yes — we offer 30-minute virtual consultations over video call, where our
                       consultants walk you through collections, sizing, and customization options.
                       Email <a href="mailto:sales@lumierajewels.com">sales@lumierajewels.com</a>
                       to schedule yours.</p>
                </div>
            </details>

            <details class="faq-item">
                <summary>
                    <span>Do you buy back or exchange old jewellery?</span>
                    <span class="faq-toggle">+</span>
                </summary>
                <div class="faq-content">
                    <p>We offer gold exchange and buy-back services based on current market rates.
                       Bring your jewellery to the boutique along with a valid ID — our team will
                       evaluate and quote on the spot.</p>
                </div>
            </details>

        </div>
    </section>

</div>

<footer>
    <p class="gold">LUMIERA FINE JEWELLERY</p>
    <p>Crafting timeless treasures since 1995</p>
    <p>&copy; <%= Year.now().getValue() %> Lumiera Jewels. All rights reserved.</p>
</footer>

<script>
(function () {
    const form = document.getElementById('contactForm');
    const success = document.getElementById('formSuccess');
    const submitBtn = document.getElementById('submitBtn');
    const charCount = document.getElementById('charCount');
    const message = document.getElementById('message');

    // Live character counter
    if (message && charCount) {
        message.addEventListener('input', () => {
            charCount.textContent = message.value.length;
        });
    }

    function showError(field, msg) {
        const el = document.querySelector('[data-error-for="' + field + '"]');
        if (el) { el.textContent = msg; el.style.display = msg ? 'block' : 'none'; }
    }

    function validateField(name) {
        const field = form.elements[name];
        if (!field) return true;

        if (field.type === 'checkbox') {
            if (field.required && !field.checked) {
                showError(name, 'This field is required.');
                return false;
            }
            showError(name, '');
            return true;
        }

        const val = field.value.trim();
        if (field.required && !val) {
            showError(name, 'This field is required.');
            return false;
        }
        if (name === 'email' && val && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(val)) {
            showError(name, 'Please enter a valid email address.');
            return false;
        }
        if (name === 'phone' && val && !/^[+]?[0-9\s\-()]{7,20}$/.test(val)) {
            showError(name, 'Please enter a valid phone number.');
            return false;
        }
        if (name === 'message' && val.length < 10 && field.required) {
            showError(name, 'Message must be at least 10 characters.');
            return false;
        }
        showError(name, '');
        return true;
    }

    // Live validation on blur
    ['name', 'email', 'phone', 'subject', 'message', 'consent'].forEach(n => {
        const f = form.elements[n];
        if (f) f.addEventListener('blur', () => validateField(n));
    });

    form.addEventListener('submit', function (e) {
        e.preventDefault();

        const fields = ['name', 'email', 'phone', 'subject', 'message', 'consent'];
        let valid = true;
        fields.forEach(n => { if (!validateField(n)) valid = false; });

        if (!valid) {
            const firstErr = form.querySelector('.error-msg[style*="block"]');
            if (firstErr) firstErr.scrollIntoView({ behavior: 'smooth', block: 'center' });
            return;
        }

        submitBtn.disabled = true;
        submitBtn.querySelector('.btn-text').textContent = 'Sending...';

        // Simulated send (replace with real backend call)
        setTimeout(() => {
            form.reset();
            charCount.textContent = '0';
            submitBtn.disabled = false;
            submitBtn.querySelector('.btn-text').textContent = 'Send Message';
            success.hidden = false;
            success.scrollIntoView({ behavior: 'smooth', block: 'center' });
        }, 900);
    });
})();
</script>

</body>
</html>
