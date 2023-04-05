extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_up():
	var cert2:X509Certificate = X509Certificate.new();
	cert2.load_from_string($"../../VBoxContainer2/GeneratedCertField".text);
	$"../../VBoxContainer3/LoadedCertField".text = cert2.save_to_string();
