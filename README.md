# Robot Framework Test Automation Project

**UI automation framework using Robot Framework with Page Object Model pattern**

---

## 🎯 Purpose

Professional test automation framework demonstrating Robot Framework best practices for web application testing, including:

- Page Object Model (POM) design pattern
- Reusable keywords and resources
- Structured test data management
- Selenium WebDriver integration
- Parallel test execution with Pabot

**Target:** Demonstrates UI automation expertise for QA Engineer positions

---

## 🏗️ Project Structure
```
robotframework-testing-project/
├── PageObjects/          # Page Object Model classes
├── Resources/            # Reusable keywords and variables
├── Testcases/           # Test suite files
├── TestData/            # Test data and configurations
├── .gitignore           # Git ignore rules
├── run.bat              # Test execution script
└── README.md
```

---

## 🚀 Quick Start

### Prerequisites
- Python 3.8 or higher
- pip (Python package manager)

### Installation
```bash
# Clone repository
git clone https://github.com/Fardinkh740/robotframework-testing-project.git
cd robotframework-testing-project

# Install dependencies
pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-pabot

# Download WebDriver (ChromeDriver or GeckoDriver)
# Place in system PATH or project root
```

### Run Tests
```bash
# Run all tests
robot Testcases/

# Run specific test suite
robot Testcases/example_tests.robot

# Run with parallel execution
pabot --processes 4 Testcases/

# Run using batch file (Windows)
run.bat
```

---

## 🛠️ Key Features

### 1. Page Object Model Pattern
Separates test logic from page structure for better maintainability:
```robot
*** Settings ***
Library    PageObjects/LoginPage.py

*** Test Cases ***
Valid Login Test
    Open Login Page
    Enter Username    valid_user
    Enter Password    valid_pass
    Click Login Button
    Verify Dashboard Displayed
```

### 2. Reusable Keywords
Common actions centralized in Resource files:
```robot
*** Keywords ***
Open Browser To Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
```

### 3. Data-Driven Testing
Test data separated from test logic:
```robot
*** Variables ***
${URL}         https://example.com
${BROWSER}     Chrome
${TIMEOUT}     30s
```

---

## 📊 Technologies

- **Framework:** Robot Framework 6.x
- **Library:** SeleniumLibrary (Selenium WebDriver)
- **Pattern:** Page Object Model (POM)
- **Language:** Python 3.x
- **Parallel Execution:** Pabot
- **Web Drivers:** ChromeDriver, GeckoDriver

---

## 💼 Real-World Applications

This framework structure is suitable for:

- **E-commerce:** Product search, cart, checkout flows
- **Financial Services:** Account management, transactions
- **SaaS Applications:** User registration, feature workflows
- **E-Government:** Form submissions, document processing

---

## 🎓 Skills Demonstrated

**Core competencies:**
- UI Test Automation (Selenium WebDriver, Robot Framework)
- Design Patterns (Page Object Model)
- Test Architecture (modular, scalable structure)
- Python (custom keywords, utilities)
- Cross-browser Testing (Chrome, Firefox support)
- Parallel Execution (faster feedback with Pabot)

**Best practices:**
- Separation of concerns (tests, pages, data)
- Reusable components (keywords, resources)
- Maintainable test structure
- Clean repository management

---

## 🔗 Related Projects

- [Backend API Testing with Playwright](https://github.com/Fardinkh740/backend-api-testing-portfolio) - Modern API testing framework with Playwright

**Combined portfolio demonstrates:** Breadth (Robot Framework + Playwright) and Depth (UI + API testing expertise)

---

## 📈 Future Enhancements

- [ ] Add detailed test documentation
- [ ] Implement custom reporting
- [ ] Add database validation keywords
- [ ] Integrate with CI/CD pipeline
- [ ] Add API testing keywords
- [ ] Implement test data factories
- [ ] Add visual regression testing

---

## 👤 Author

**Fardin Khan**  
Senior QA Automation Engineer | Berlin, Germany

**Background:**
- 5+ years in QA automation for regulated industries
- Expertise: Robot Framework, Playwright, Python, CI/CD
- Focus: Scalable test architecture, API + UI automation

**Contact:**
- GitHub: [@Fardinkh740](https://github.com/Fardinkh740)
- Email: kfardin740@gmail.com

---

## 📝 License

MIT License - Free to use for learning and portfolio purposes.

---

## 🙏 Acknowledgments

- **Framework:** [Robot Framework](https://robotframework.org/)
- **Library:** [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)
- **Inspired by:** Real-world test automation at Nortal AG

---

**⭐ If this helped you, please star the repository!**