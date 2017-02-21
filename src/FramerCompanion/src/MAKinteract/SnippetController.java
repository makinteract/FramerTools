package MAKinteract;

import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.ListView;
import javafx.scene.input.*;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;

import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;


public class SnippetController
{
    @FXML
    ListView categoriesList;

    @FXML
    ListView snippetsList;

    @FXML
    TextFlow textFlow;

    ArrayList<String> categories;
    ArrayList<String> snippets;

    String category, fileName, code;
    String extension;
    Text snippetText;

    public void initialize()
    {
        extension= ".coffee";


        categories= getFileNames (getDirList(Main.snippetsFolder));
        ObservableList<String> items = FXCollections.observableArrayList (categories);
        categoriesList.setItems(items);


        categoriesList.getSelectionModel().selectedItemProperty().addListener(new ChangeListener<String>() {

            @Override
            public void changed(ObservableValue<? extends String> observable, String oldValue, String newValue) {
                selectCategory(newValue);
            }
        });


        snippetsList.getSelectionModel().selectedItemProperty().addListener(new ChangeListener<String>() {

            @Override
            public void changed(ObservableValue<? extends String> observable, String oldValue, String newValue) {
                if (newValue==null) return;
                selectSnippet (newValue);
            }
        });
    }

    @FXML
    void copyOnClipboard()
    {
        ClipboardContent content = new ClipboardContent();
        content.putString(code);
        Clipboard.getSystemClipboard().setContent (content);
    }


    File[] getDirList (String path)
    {
        return new File(path).listFiles(new FileFilter() {
            @Override
            public boolean accept(File file) {
                return file.isDirectory();
            }
        });
    }

    File[] getFileList (String path)
    {
        return new File(path).listFiles(new FileFilter() {
            @Override
            public boolean accept(File file) {
                return file.isFile();
            }
        });
    }


    ArrayList<String> getFileNames (File[] files)
    {
        ArrayList<String> names= new ArrayList<String>();

        for (int i = 0; i < files.length; i++) {
            String name= files[i].getName();
            int index= name.lastIndexOf('.');
            if (index>0)
                name= name.substring(0, index);
            names.add (name);
        }
        return names;
    }


    void selectCategory(String category)
    {
        this.category= category;
        snippets= getFileNames (getFileList(Main.snippetsFolder+category));

        ObservableList<String> items = FXCollections.observableArrayList (snippets);
        snippetsList.setItems(items);
    }


    void selectSnippet (String snippet)
    {
        fileName= snippet;
        code= getSnippet (Main.snippetsFolder+category+"/"+snippet+extension);


        snippetText = new Text(code);
        snippetText.setId("snipped_text");

        if (textFlow.getChildren().size()>0)  textFlow.getChildren().remove(0);
        textFlow.getChildren().addAll(snippetText);



        snippetText.setOnDragDetected(new EventHandler<MouseEvent>() {
            public void handle(MouseEvent event) {
                
                // allow any transfer mode
                Dragboard db = snippetText.startDragAndDrop(TransferMode.ANY);

                // put a string on dragboard
                ClipboardContent content = new ClipboardContent();
                content.putString(snippetText.getText());
                db.setContent(content);

                event.consume();
            }
        });
    }


    String getSnippet (String fileName)
    {
        String snippetCode="";
        try (Scanner scanner = new Scanner(new File(fileName))) {

            while (scanner.hasNext())
                snippetCode+= scanner.nextLine() + "\n";

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        // strip everything outside quotes
        snippetCode = snippetCode.substring(snippetCode.indexOf("#{contents}")+12, snippetCode.lastIndexOf("\"\"\""));

        return snippetCode;
    }
}
