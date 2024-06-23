# Sketch Image Processing Using MATLAB

## Project Description
This project demonstrates sketch image processing using MATLAB. The process involves reading an image, converting it to grayscale, creating a negative of the grayscale image, blurring the negative image, and finally generating a sketch-like processed image. The steps and results are visualized using MATLAB.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Code Overview](#code-overview)
- [Results](#results)
- [Contributing](#contributing)
- [License](#license)

## Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/DorukAkguney/SketchImageProcessing.git
    ```
2. Navigate to the project directory:
    ```bash
    cd SketchImageProcessing
    ```

## Usage
1. Open MATLAB.
2. Run the `sketch_image_processing.m` file.
3. The program will read the image `Image-3.jpg`, process it, and display the results step by step.

## Code Overview
- `sketch_image_processing.m`: The main MATLAB script that performs the sketch image processing operations.
- `Image-3.jpg`: The original image used for processing.
- `Final_image.jpg`: The final processed image obtained after running the script.

## Results
The project involves the following steps:
1. **Original Image:** The original image read using `imread`.
2. **Grayscale Image:** Conversion of the original image to grayscale using `rgb2gray`.
3. **Negative Grayscale Image:** Inversion of the grayscale image.
4. **Blurred Image:** Blurring the negative grayscale image using a Gaussian filter.
5. **Negative Blurred Image:** Inversion of the blurred image.
6. **Final Image:** Division of the grayscale image by the negative blurred image to produce the final sketch-like processed image.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request for any improvements or additions.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
