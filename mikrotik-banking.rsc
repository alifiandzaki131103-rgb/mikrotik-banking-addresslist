# ============================================================================
# MikroTik RouterOS - Indonesian Banking & Payment Address List
# ============================================================================
# Generated: 2026-05-07 | Total entries: 137 active (+ 4 optional CDN ranges)
# 
# IMPORTANT:
# - IP addresses are point-in-time snapshots — CDN IPs WILL rotate
# - DNS-based entries (domain names) are dynamically resolved by MikroTik
#   and are the MOST RELIABLE for long-term use
# - Banks with own IP blocks (BCA, Permata, Danamon, Maybank) are stable
# - Banks behind CDN (Imperva, Akamai, Cloudflare) need DNS entries
# USAGE: Upload to MikroTik via Files, then:
#   /import file-name=mikrotik-banking.rsc
# ============================================================================

# --- Optional: Clear existing list for clean import ---
# /ip firewall address-list remove [find where list=BANKING]

# ============================================================================
# SECTION 1: INDONESIAN BANKS
# ============================================================================

# ---- BCA (Bank Central Asia) ---- Own IP block: 202.6.208.0/20 ----
/ip firewall address-list add list=BANKING address=202.6.208.0/20 comment="BCA - own IP block"
/ip firewall address-list add list=BANKING address=klikbca.com comment="BCA - KlikBCA (DNS)"
/ip firewall address-list add list=BANKING address=www.klikbca.com comment="BCA - KlikBCA WWW (DNS)"
/ip firewall address-list add list=BANKING address=m.klikbca.com comment="BCA - KlikBCA Mobile (DNS)"
/ip firewall address-list add list=BANKING address=ibank.klikbca.com comment="BCA - Internet Banking (DNS)"
/ip firewall address-list add list=BANKING address=api.klikbca.com comment="BCA - API (DNS)"
/ip firewall address-list add list=BANKING address=bca.co.id comment="BCA - Main Site (DNS)"
/ip firewall address-list add list=BANKING address=www.bca.co.id comment="BCA - Main Site WWW (DNS)"
/ip firewall address-list add list=BANKING address=mybca.bca.co.id comment="BCA - myBCA App (DNS)"
/ip firewall address-list add list=BANKING address=api.mybca.bca.co.id comment="BCA - myBCA API (DNS)"
/ip firewall address-list add list=BANKING address=halo.bca.co.id comment="BCA - HaloBCA (DNS)"
/ip firewall address-list add list=BANKING address=developer.bca.co.id comment="BCA - Developer/Open API (DNS)"

# ---- Bank Mandiri ---- AWS Jakarta + Akamai CDN ----
/ip firewall address-list add list=BANKING address=bankmandiri.co.id comment="Mandiri - Main Site (DNS)"
/ip firewall address-list add list=BANKING address=www.bankmandiri.co.id comment="Mandiri - WWW (DNS)"
/ip firewall address-list add list=BANKING address=api.bankmandiri.co.id comment="Mandiri - API (DNS)"
/ip firewall address-list add list=BANKING address=livin.mandiri.co.id comment="Mandiri - Livin App (DNS)"
/ip firewall address-list add list=BANKING address=kopra.bankmandiri.co.id comment="Mandiri - Kopra Corporate Banking (DNS)"
/ip firewall address-list add list=BANKING address=qris.bankmandiri.co.id comment="Mandiri - QRIS Payment (DNS)"
/ip firewall address-list add list=BANKING address=mandiri.co.id comment="Mandiri - Corporate Site (DNS)"
/ip firewall address-list add list=BANKING address=livin.co.id comment="Mandiri - Livin by Mandiri (DNS)"

# ---- BNI (Bank Negara Indonesia) ---- Imperva CDN + Own IP block ----
/ip firewall address-list add list=BANKING address=103.108.254.0/23 comment="BNI - own IP block (PT Bank Negara Indonesia)"
/ip firewall address-list add list=BANKING address=45.223.65.109 comment="BNI (Imperva)"
/ip firewall address-list add list=BANKING address=45.223.66.109 comment="BNI (Imperva)"
/ip firewall address-list add list=BANKING address=45.223.140.74 comment="BNI Direct/Digital (Imperva)"
/ip firewall address-list add list=BANKING address=bni.co.id comment="BNI - Main Site (DNS)"
/ip firewall address-list add list=BANKING address=www.bni.co.id comment="BNI - WWW (DNS)"
/ip firewall address-list add list=BANKING address=ibank.bni.co.id comment="BNI - Internet Banking (DNS)"
/ip firewall address-list add list=BANKING address=api.bni.co.id comment="BNI - API Mobile (DNS)"
/ip firewall address-list add list=BANKING address=direct.bni.co.id comment="BNI Direct (DNS)"
/ip firewall address-list add list=BANKING address=bnidirect.bni.co.id comment="BNI Direct Corporate (DNS)"
/ip firewall address-list add list=BANKING address=wondr.bni.co.id comment="BNI Wondr by BNI (DNS)"

# ---- BRI (Bank Rakyat Indonesia) ---- Imperva CDN + Own IP block ----
/ip firewall address-list add list=BANKING address=103.63.96.0/22 comment="BRI - own IP block (PT Bank Rakyat Indonesia)"
/ip firewall address-list add list=BANKING address=45.60.44.181 comment="BRI (Imperva)"
/ip firewall address-list add list=BANKING address=45.60.105.181 comment="BRI (Imperva)"
/ip firewall address-list add list=BANKING address=45.60.48.181 comment="BRI - ib/brimo (Imperva)"
/ip firewall address-list add list=BANKING address=bri.co.id comment="BRI - Main Site (DNS)"
/ip firewall address-list add list=BANKING address=www.bri.co.id comment="BRI - WWW (DNS)"
/ip firewall address-list add list=BANKING address=ib.bri.co.id comment="BRI - Internet Banking (DNS)"
/ip firewall address-list add list=BANKING address=brimo.bri.co.id comment="BRI - BRImo App (DNS)"
/ip firewall address-list add list=BANKING address=api.bri.co.id comment="BRI - API Mobile (DNS)"
/ip firewall address-list add list=BANKING address=brilink.bri.co.id comment="BRI - BRILink Agent (DNS)"

# ---- BSI (Bank Syariah Indonesia) ---- Imperva CDN + Own IP block ----
/ip firewall address-list add list=BANKING address=103.23.116.0/23 comment="BSI - own IP block (PT Bank Syariah Mandiri)"
/ip firewall address-list add list=BANKING address=45.223.170.70 comment="BSI (Imperva)"
/ip firewall address-list add list=BANKING address=45.223.166.70 comment="BSI (Imperva)"
/ip firewall address-list add list=BANKING address=45.223.140.198 comment="BSI Mobile/API (Imperva)"
/ip firewall address-list add list=BANKING address=45.223.140.74 comment="BSI Digital/QRIS (Imperva)"
/ip firewall address-list add list=BANKING address=bankbsi.co.id comment="BSI - Main Site (DNS)"
/ip firewall address-list add list=BANKING address=www.bankbsi.co.id comment="BSI - WWW (DNS)"
/ip firewall address-list add list=BANKING address=api.bankbsi.co.id comment="BSI - API Gateway (DNS)"
/ip firewall address-list add list=BANKING address=bsimobilethree.bankbsi.co.id comment="BSI Mobile App (DNS)"
/ip firewall address-list add list=BANKING address=bsinet.bankbsi.co.id comment="BSI Net Internet Banking (DNS)"
/ip firewall address-list add list=BANKING address=di-api.bankbsi.co.id comment="BSI Digital API (DNS)"
/ip firewall address-list add list=BANKING address=liveness.bankbsi.co.id comment="BSI Mobile Liveness/eKYC (DNS)"
/ip firewall address-list add list=BANKING address=onboarding.bankbsi.co.id comment="BSI Mobile Onboarding (DNS)"
/ip firewall address-list add list=BANKING address=qrismrprod.bankbsi.co.id comment="BSI QRIS Payment (DNS)"
/ip firewall address-list add list=BANKING address=bsidvc.bankbsi.co.id comment="BSI Digital Video Call (DNS)"
/ip firewall address-list add list=BANKING address=videostream.bankbsi.co.id comment="BSI Video Stream (DNS)"
/ip firewall address-list add list=BANKING address=bsi.co.id comment="BSI Corporate Site (DNS)"
/ip firewall address-list add list=BANKING address=www.bsi.co.id comment="BSI Corporate WWW (DNS)"

# ---- CIMB Niaga ---- Imperva CDN ----
/ip firewall address-list add list=BANKING address=45.60.46.215 comment="CIMB Niaga (Imperva)"
/ip firewall address-list add list=BANKING address=45.60.48.215 comment="CIMB Niaga (Imperva)"
/ip firewall address-list add list=BANKING address=45.60.112.24 comment="CIMB Niaga API (Imperva)"
/ip firewall address-list add list=BANKING address=cimbniaga.co.id comment="CIMB Niaga (DNS)"
/ip firewall address-list add list=BANKING address=www.cimbniaga.co.id comment="CIMB Niaga WWW (DNS)"
/ip firewall address-list add list=BANKING address=api.cimbniaga.co.id comment="CIMB Niaga OCTO Mobile API (DNS)"

# ---- Bank Permata ---- Own IP block: 202.191.2.0/23 ----
/ip firewall address-list add list=BANKING address=202.191.2.0/23 comment="Permata - own IP block"
/ip firewall address-list add list=BANKING address=permatabank.com comment="Permata (DNS)"
/ip firewall address-list add list=BANKING address=www.permatabank.com comment="Permata WWW (DNS)"

# ---- Bank Danamon ---- Own IP block: 222.229.80.0/21 ----
/ip firewall address-list add list=BANKING address=222.229.80.0/21 comment="Danamon - own IP block"
/ip firewall address-list add list=BANKING address=danamon.co.id comment="Danamon (DNS)"
/ip firewall address-list add list=BANKING address=www.danamon.co.id comment="Danamon WWW (DNS)"
/ip firewall address-list add list=BANKING address=api.danamon.co.id comment="Danamon D-Bank PRO API (DNS)"

# ---- BTN (Bank Tabungan Negara) ---- Imperva CDN ----
/ip firewall address-list add list=BANKING address=45.223.140.74 comment="BTN (Imperva)"
/ip firewall address-list add list=BANKING address=45.223.138.74 comment="BTN (Imperva)"
/ip firewall address-list add list=BANKING address=btn.co.id comment="BTN (DNS)"
/ip firewall address-list add list=BANKING address=www.btn.co.id comment="BTN WWW (DNS)"

# ---- Bank Mega ---- Own IP block: 103.222.239.0/24 ----
/ip firewall address-list add list=BANKING address=103.222.239.0/24 comment="Bank Mega - own IP block"
/ip firewall address-list add list=BANKING address=159.60.142.64 comment="Bank Mega (F5)"
/ip firewall address-list add list=BANKING address=bankmega.com comment="Bank Mega (DNS)"
/ip firewall address-list add list=BANKING address=www.bankmega.com comment="Bank Mega WWW (DNS)"
/ip firewall address-list add list=BANKING address=msmile.bankmega.com comment="Bank Mega M-Smile Mobile (DNS)"
/ip firewall address-list add list=BANKING address=api.bankmega.com comment="Bank Mega API Mobile (DNS)"

# ---- OCBC NISP ---- Multi-ISP + Imperva ----
/ip firewall address-list add list=BANKING address=182.23.50.212 comment="OCBC NISP (Lintasarta)"
/ip firewall address-list add list=BANKING address=103.183.61.40 comment="OCBC NISP"
/ip firewall address-list add list=BANKING address=14.102.152.32 comment="OCBC NISP"
/ip firewall address-list add list=BANKING address=103.111.190.234 comment="OCBC NISP (CBN)"
/ip firewall address-list add list=BANKING address=ocbcnisp.com comment="OCBC NISP (DNS)"
/ip firewall address-list add list=BANKING address=www.ocbcnisp.com comment="OCBC NISP WWW (DNS)"
/ip firewall address-list add list=BANKING address=ocbc.id comment="OCBC Mobile (DNS)"
/ip firewall address-list add list=BANKING address=www.ocbc.id comment="OCBC Mobile WWW (DNS)"
/ip firewall address-list add list=BANKING address=mobile.ocbc.id comment="OCBC ONE Mobile (DNS)"
/ip firewall address-list add list=BANKING address=api.ocbc.id comment="OCBC Mobile API (DNS)"

# ---- Panin Bank ---- Akamai CDN ----
/ip firewall address-list add list=BANKING address=panin.co.id comment="Panin Bank (DNS)"
/ip firewall address-list add list=BANKING address=www.panin.co.id comment="Panin Bank WWW (DNS)"

# ---- Maybank Indonesia ---- Own IP block: 103.247.182.0/23 ----
/ip firewall address-list add list=BANKING address=103.247.182.0/23 comment="Maybank - own IP block"
/ip firewall address-list add list=BANKING address=maybank.co.id comment="Maybank (DNS)"
/ip firewall address-list add list=BANKING address=www.maybank.co.id comment="Maybank WWW (DNS)"
/ip firewall address-list add list=BANKING address=m2u.maybank.co.id comment="Maybank M2U Mobile (DNS)"
/ip firewall address-list add list=BANKING address=api.maybank.co.id comment="Maybank API Mobile (DNS)"

# ---- BCA Digital (blu) ----
/ip firewall address-list add list=BANKING address=103.11.74.12 comment="BCA Digital - blu.co.id"
/ip firewall address-list add list=BANKING address=blu.co.id comment="BCA Digital blu (DNS)"
/ip firewall address-list add list=BANKING address=www.blu.co.id comment="BCA Digital blu WWW (DNS)"
/ip firewall address-list add list=BANKING address=api.blu.co.id comment="BCA Digital blu API (DNS)"
/ip firewall address-list add list=BANKING address=app.blu.co.id comment="BCA Digital blu App (DNS)"

# ============================================================================
# SECTION 2: E-WALLETS & FINTECH
# ============================================================================

# ---- GoPay / Gojek ----
/ip firewall address-list add list=BANKING address=gopay.co.id comment="GoPay (DNS)"
/ip firewall address-list add list=BANKING address=www.gopay.co.id comment="GoPay WWW (DNS)"
/ip firewall address-list add list=BANKING address=gojek.com comment="Gojek (DNS)"
/ip firewall address-list add list=BANKING address=api.gojek.co.id comment="Gojek API (DNS)"

# ---- OVO ---- Cloudflare ----
/ip firewall address-list add list=BANKING address=ovo.id comment="OVO (DNS)"
/ip firewall address-list add list=BANKING address=api.ovo.id comment="OVO API (DNS)"

# ---- DANA ---- Alibaba Cloud + Akamai ----
/ip firewall address-list add list=BANKING address=dana.id comment="DANA (DNS)"
/ip firewall address-list add list=BANKING address=www.dana.id comment="DANA WWW (DNS)"
/ip firewall address-list add list=BANKING address=dana.co.id comment="DANA alt (DNS)"

# ---- ShopeePay / Shopee ----
/ip firewall address-list add list=BANKING address=shopeepay.co.id comment="ShopeePay (DNS)"
/ip firewall address-list add list=BANKING address=shopee.co.id comment="Shopee (DNS)"

# ---- LinkAja ----
/ip firewall address-list add list=BANKING address=linkaja.co.id comment="LinkAja (DNS)"
/ip firewall address-list add list=BANKING address=www.linkaja.co.id comment="LinkAja WWW (DNS)"

# ============================================================================
# SECTION 3: PAYMENT GATEWAYS
# ============================================================================

# ---- Midtrans ---- Cloudflare + Alibaba Cloud ----
/ip firewall address-list add list=BANKING address=midtrans.com comment="Midtrans (DNS)"
/ip firewall address-list add list=BANKING address=api.midtrans.com comment="Midtrans API (DNS)"
/ip firewall address-list add list=BANKING address=app.midtrans.com comment="Midtrans App (DNS)"

# ---- Xendit ---- Cloudflare ----
/ip firewall address-list add list=BANKING address=xendit.co comment="Xendit (DNS)"
/ip firewall address-list add list=BANKING address=dashboard.xendit.co comment="Xendit Dashboard (DNS)"
/ip firewall address-list add list=BANKING address=api.xendit.co comment="Xendit API (DNS)"

# ---- DOKU ---- Akamai ----
/ip firewall address-list add list=BANKING address=doku.com comment="DOKU (DNS)"
/ip firewall address-list add list=BANKING address=www.doku.com comment="DOKU WWW (DNS)"
/ip firewall address-list add list=BANKING address=api.doku.com comment="DOKU API (DNS)"

# ---- Finpay ----
/ip firewall address-list add list=BANKING address=finpay.net comment="Finpay (DNS)"
/ip firewall address-list add list=BANKING address=www.finpay.net comment="Finpay WWW (DNS)"

# ============================================================================
# SECTION 4: INTERNATIONAL CARD NETWORKS
# ============================================================================

# ---- Visa ----
/ip firewall address-list add list=BANKING address=visa.com comment="Visa (DNS)"
/ip firewall address-list add list=BANKING address=visa.co.id comment="Visa Indonesia (DNS)"
/ip firewall address-list add list=BANKING address=checkout.visa.com comment="Visa Checkout (DNS)"

# ---- Mastercard ----
/ip firewall address-list add list=BANKING address=mastercard.com comment="Mastercard (DNS)"
/ip firewall address-list add list=BANKING address=mastercard.co.id comment="Mastercard ID (DNS)"
/ip firewall address-list add list=BANKING address=api.mastercard.com comment="Mastercard API (DNS)"
/ip firewall address-list add list=BANKING address=secure.mastercard.com comment="Mastercard 3DS (DNS)"

# ---- JCB ----
/ip firewall address-list add list=BANKING address=jcb.com comment="JCB (DNS)"
/ip firewall address-list add list=BANKING address=www.jcb.com comment="JCB WWW (DNS)"

# ============================================================================
# SECTION 5: CDN/WAF RANGES (OPTIONAL — uncomment jika perlu)
# ============================================================================
# Uncomment jika banking masih terblokir meski DNS entries sudah aktif
# --- Imperva/Incapsula (BNI, BRI, BSI, CIMB Niaga, BTN) ---
# /ip firewall address-list add list=BANKING address=45.60.0.0/16 comment="CDN-Imperva Range1"
# /ip firewall address-list add list=BANKING address=45.223.0.0/16 comment="CDN-Imperva Range2"
# --- Cloudflare (OVO, Xendit, Midtrans, Visa) ---
# /ip firewall address-list add list=BANKING address=104.16.0.0/13 comment="CDN-Cloudflare Range1"
# /ip firewall address-list add list=BANKING address=172.64.0.0/13 comment="CDN-Cloudflare Range2"

# ============================================================================
# SECTION 6: CONTOH FIREWALL RULES (OPTIONAL)
# ============================================================================
# --- QoS Priority untuk Banking ---
# /ip firewall mangle add chain=prerouting dst-address-list=BANKING action=mark-connection new-connection-mark=banking_conn passthrough=yes
# /ip firewall mangle add chain=prerouting connection-mark=banking_conn action=mark-packet new-packet-mark=banking_pkt passthrough=no
# /queue simple add name=banking-priority packet-marks=banking_pkt max-limit=0/0 priority=1/1

# --- Always Allow Banking ---
# /ip firewall filter add chain=forward dst-address-list=BANKING action=accept comment="Allow banking traffic"

# --- Bypass Proxy untuk Banking ---
# /ip firewall nat add chain=dstnat dst-address-list=BANKING dst-port=443 protocol=tcp action=accept comment="Bypass proxy for banking"

# ============================================================================
# VERIFY:  /ip firewall address-list print where list=BANKING
# COUNT:   /ip firewall address-list print count-only where list=BANKING
# ============================================================================
