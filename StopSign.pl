import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Polygon;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class StopSignApp extends Application {
    @Override
    public void start(Stage primaryStage) {
        // Create a pane
        Pane pane = new Pane();

        // Create a red octagon
        Polygon octagon = new Polygon();
        octagon.getPoints().addAll(
            150.0, 0.0, 250.0, 0.0, 300.0, 50.0,
            300.0, 150.0, 250.0, 200.0, 150.0, 200.0,
            100.0, 150.0, 100.0, 50.0
        );
        octagon.setFill(Color.RED);

        // Create the STOP text
        Text stopText = new Text(120, 120, "STOP");
        stopText.setFont(Font.font("Arial", 50));
        stopText.setFill(Color.WHITE);

        // Add the octagon and text to the pane
        pane.getChildren().addAll(octagon, stopText);

        // Create a scene and add it to the stage
        Scene scene = new Scene(pane, 400, 300);
        primaryStage.setTitle("Stop Sign");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}

