package MAKinteract;

import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.stage.DirectoryChooser;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.nio.file.Paths;

public class NewController
{

    @FXML
    private TextField prjName;

    @FXML
    private TextField prjLocation;

    @FXML
    private Button initButton;

    @FXML
    private ImageView imgFeedback;

    @FXML
    private ChoiceBox deviceOption;

    private boolean templateInclued;
    private File path;


    public void initialize() {
        templateInclued = false;
        if (initButton != null) initButton.setDisable(true);
        if (prjLocation != null) prjLocation.setEditable(false);
        imgFeedback.setVisible(false);

        String [] options= {"Web", "iPhone", "Both", "iOS_kit", "Material_kit"};
        ObservableList<String> items = FXCollections.observableArrayList (options);
        deviceOption.setItems(items);
        deviceOption.getSelectionModel().selectFirst();


        deviceOption.getSelectionModel().selectedItemProperty().addListener(new ChangeListener<String>() {

            @Override
            public void changed(ObservableValue<? extends String> observable, String oldValue, String newValue) {
                change();
            }
        });
    }


    @FXML
    void browse()
    {
        change();
        DirectoryChooser dirChooser = new DirectoryChooser();
        dirChooser.setTitle("Select a destination folder");
        path = dirChooser.showDialog(prjName.getScene().getWindow());

        if (path==null) return;

        initButton.setDisable(false);
        prjLocation.setText(path.toString());
    }


    @FXML
    void change()
    {
        imgFeedback.setVisible(false);
    }

    @FXML
    void toggleTemplateInclusion()
    {
        templateInclued^= true; change();
    }


    @FXML
    void initializeProject()
    {
        String name= prjName.getText().toString();
        if (name.isEmpty()) return;

        String file = Paths.get(path.getAbsolutePath()+"/"+name).toString();
        if (file==null) return;

        String option = deviceOption.getSelectionModel().getSelectedItem().toString();

        String sourceFolder= "";

        if (option.equals("Web"))
        {
            sourceFolder= templateInclued ? "FramerTemplate_Web_sample" : "FramerTemplate_Web_empty";
        }else if (option.equals("iPhone"))
        {
            sourceFolder= templateInclued ? "FramerTemplate_iPhone_sample" : "FramerTemplate_iPhone_empty";
        }else if (option.equals("both")){
            // both
            sourceFolder= templateInclued ? "FramerTemplate_Both_sample" : "FramerTemplate_Both_empty";

        }else if (option.equals("iOS_kit")){
            sourceFolder= templateInclued ? "FramerTemplate_iOSkit_sample" : "FramerTemplate_iOSkit_empty";

        }else if (option.equals("Material_kit")){
            sourceFolder= templateInclued ? "FramerTemplate_Materialkit_sample" : "FramerTemplate_Materialkit_empty";
        }

        try {
            FileUtils.copyDirectory(new File(Main.templatesFolder+sourceFolder), new File(file));
        }catch (Exception e)
        {
            e.printStackTrace();
            return;
        }

        imgFeedback.setVisible(true);
    }
}
