package drawingapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class DrawingController {

    @PostMapping("/upload")
    public String uploadDrawing(MultipartFile file) {
        // Handle file upload and save drawing to database
        // You can implement the logic for saving drawings here
        return "redirect:/drawings"; // Redirect to drawings list (implement this view)
    }
}
