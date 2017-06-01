int main (string[] args) {
    Gtk.init (ref args);
    // Create new window with name of window
    var window = new Gtk.Window ();
    // Set window title to Hello World!
    window.title = "Hello World!";
    // Give the window some padding 
    window.set_border_width (12);
    // Position window in center instead of default of top left 
    window.set_position (Gtk.WindowPosition.CENTER);
    // Set default window size 
    window.set_default_size (350, 70);
    // Quit if this window is closed 
    window.destroy.connect (Gtk.main_quit);
    
    // Create Gtk button with label of Click me!
    var button_hello = new Gtk.Button.with_label ("Click me!");
    // If button clicked change label to say Hello World!
    button_hello.clicked.connect (() => {
        button_hello.label = "Hello World!";   
        // Make button insensitive as clicking the button again has no visible effect 
        // Makes the button inactive after the first click 
        button_hello.set_sensitive (false);
    }); 
    
    // Add button to window and show all of windows contents 
    window.add (button_hello);
    window.show_all ();

    Gtk.main ();
    return 0;    
}
