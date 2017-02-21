package MAKinteract;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TitledPane;
import javafx.stage.Stage;

import java.io.File;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{

        System.out.println(new File(System.getProperty("user.dir")+"/resources/FramerTemplate_sample"));
        
        Parent root = FXMLLoader.load(getClass().getResource("viewMain.fxml"));
        primaryStage.setTitle("Framer Companion");
        primaryStage.setScene(new Scene(root, 460, 290));
        primaryStage.setResizable(false);
        primaryStage.show();

    }


    public static void main(String[] args) {
        launch(args);
    }
}
