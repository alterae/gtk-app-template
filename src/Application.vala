// Basic GTK+ application template to save myself the work of having to do this over and over.
// Replace this comment with an app description or something.

// TODO: #1 Make an XML version.

public class MyApp : Gtk.Application {
    public MyApp () {
        // Define the application ID and flags.
        // REMEMBER: CHANGE APP ID TO MATCH PROJECT NAME
        Object (
            application_id: "com.github.Alterae.gtk-app-template",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        // Sets up window.
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = _("Window Title");

        // Add window contents here.  Placeholder image included.
        var icon = new Gtk.Image ();
        icon.gicon = new ThemedIcon ("application-default-icon");
        icon.pixel_size = 128;
        main_window.add (icon);

        // Draws the main window.
        main_window.show_all();
    }

    public static int main (string[] args) {
        // Launches the app.
        var app = new MyApp ();
        return app.run (args);
    }
}
