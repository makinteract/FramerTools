package MAKinteract;


import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.stage.DirectoryChooser;

import java.io.File;


public class BrowserSyncController implements MAKinteract.CommandListener
{
    @FXML
    private TextField syncLocation;

    @FXML
    private Button syncButton;

    @FXML
    private Label address;

    @FXML
    private Label port;



    private File path;

    public void initialize()
    {
        if (syncLocation!=null) syncLocation.setEditable(false);
        if (syncButton!=null) syncButton.setDisable(true);
    }

    @FXML
    void browse()
    {
        DirectoryChooser dirChooser = new DirectoryChooser();
        dirChooser.setTitle("Select the folder to sync");
        path = dirChooser.showDialog(syncLocation.getScene().getWindow());

        if (path==null) return;
        syncLocation.setText(path.getAbsolutePath().toString());
        if (syncButton!=null) syncButton.setDisable(false);
    }

    @FXML
    void sync()
    {
        String p= path.getAbsolutePath().toString();
        String cmd = isWindows() ? "browser-sync.cmd" : "browser-sync";
        new CommandExecutor(new Command("sync", cmd+" start --server "+p+" --files "+p), this);
    }

    @Override
    public void onCommandCompletion(Command cmd) {

        String res = cmd.getResult();

        if (cmd.getLabel().equals("sync")) {
            System.out.println(res);

            res = res.toLowerCase();
            res= res.substring(21);
            String ip= res.substring(0,res.indexOf(':'));
            String p= res.substring(res.indexOf(':')+1);

            Platform.runLater(() -> {
                address.setText(ip);
                port.setText(p);
            });
        }
    }

    boolean isWindows() {
        return System.getProperty("os.name").toLowerCase().contains("win");
    }

}
