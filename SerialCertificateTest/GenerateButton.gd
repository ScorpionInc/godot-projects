extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_button_up():
	var crypto:Crypto = Crypto.new();
	var cert_key:CryptoKey = crypto.generate_rsa(4096);
	var cert:X509Certificate = crypto.generate_self_signed_certificate(cert_key,"CN=example.com,O=A Game Company,C=IT");
	$"../../VBoxContainer2/GeneratedCertField".text = cert.save_to_string()
	$"../LoadButton".disabled = false
