package MAKinteract;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;


public class CommandExecutor implements Runnable {
    private Command command;
    private ArrayList<CommandListener> listeners;


    CommandExecutor(Command cmd, CommandListener listener) {
        listeners = new ArrayList<CommandListener>();

        this.command = cmd;
        listeners.add(listener);

        (new Thread(this)).start();
    }


    public void run() {
        try {
            ProcessBuilder pb = new ProcessBuilder(command.getCommand());
            Process process = pb.start();
            String result = output(process.getInputStream());

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private String output(InputStream inputStream) throws IOException {
        BufferedReader br = null;
        try {
            br = new BufferedReader(new InputStreamReader(inputStream));
            String line=null;

            while ((line = br.readLine()) != null) {
                if (line.contains("External") && !line.contains("UI")) {
                    command.setResult(line);

                    for (CommandListener listener : listeners) {
                        if (listener != null) listener.onCommandCompletion(command);
                    }
                }
            }
        } finally {
            br.close();
        }
        return "";
    }
}


interface CommandListener {
    void onCommandCompletion(Command c);
}


class Command {
    private String label;
    private String[] commandArray;
    private String result;

    Command(String label, String command) {
        this.label = label;
        commandArray = command.split(" ");

        this.result = "";
    }

    public String getLabel() {
        return label;
    }

    public String[] getCommand() {
        return commandArray;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

}

