public class Hello : Gtk.Application { 

    public Hello() {
        Object(
            application_id: "com.github.phalbert.hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
        
    }

    protected override void activate(){
        
        var label = new Gtk.Label ("Hello Again World!");

        var main_window = new Gtk.ApplicationWindow(this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";
        main_window.add(label);
        main_window.show_all();
        
    }

    public static int main(string[] args){
        var app = new MyApp();
        return app.run(args);
    }

}
