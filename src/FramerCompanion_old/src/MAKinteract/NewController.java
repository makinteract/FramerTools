package MAKinteract;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
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
    private Label footer;

    private boolean templateInclued;
    private File path;


    public void initialize() {
        templateInclued = false;
        if (initButton != null) initButton.setDisable(true);
        if (prjLocation != null) prjLocation.setEditable(false);
    }


    @FXML
    void browse()
    {
        DirectoryChooser dirChooser = new DirectoryChooser();
        dirChooser.setTitle("Select a destination folder");
        path = dirChooser.showDialog(prjName.getScene().getWindow());

        if (path==null) return;

        initButton.setDisable(false);
        prjLocation.setText(path.toString());

        footer.setText("Ready");
    }

    @FXML
    void toggleTemplateInclusion()
    {
        templateInclued^= true;
    }

    @FXML
    void initializeProject()
    {
        String name= prjName.getText().toString();
        if (name.isEmpty()) return;

        String file = Paths.get(path.getAbsolutePath()+"/"+name).toString();
        if (file==null) return;


        try {
            if (templateInclued)
                FileUtils.copyDirectory(new File(System.getProperty("user.dir")+"/resources/FramerTemplate_sample"), new File(file));
            else
                FileUtils.copyDirectory(new File(System.getProperty("user.dir")+"/resources/FramerTemplate_empty"), new File(file));
        }catch (Exception e){e.printStackTrace();}

        footer.setText("Project "+ name +" successfully initialized");
    }
}
