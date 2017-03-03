package MAKinteract;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {

    public static String templatesFolder = "resources/templates/";
    public static String snippetsFolder= "resources/FramerSnippets/";
    public static Stage mainStage;

    @Override
    public void start(Stage primaryStage) throws Exception{
        Parent root = FXMLLoader.load(getClass().getResource("main.fxml"));
        primaryStage.setTitle("Framer Companion");
        primaryStage.setScene(new Scene(root));
        primaryStage.show();
        primaryStage.setMinWidth(700);
        primaryStage.setMinHeight(275);
        primaryStage.setResizable(false);
        mainStage= primaryStage;
        // primaryStage.setAlwaysOnTop(true);
    }



    public static void main(String[] args) {
        launch(args);
    }
}
