# 🧪 IMC End-to-End Test Cases

Automated end-to-end test suite for the IMC application.

## 📋 Overview

This project contains comprehensive E2E test cases for the IMC application, ensuring all critical user flows and functionalities work as expected.

## 🛠️ Tech Stack

- **Framework:** [Robot Framework]
- **Language:** [Python]
- **Test Runner:** [Robotframework builtin]
- **Reporting:** [HTML Reports]

## 📁 Project Structure

```
IMC-Testcases/
├── tests/
│   ├── test_authentication.py
│   ├── test_dashboard.py
│   ├── test_[feature].py
│   └── ...
├── pages/
│   ├── base_page.py
│   ├── login_page.py
│   ├── dashboard_page.py
│   └── ...
├── utils/
│   ├── config.py
│   ├── helpers.py
│   └── test_data.py
├── reports/
├── screenshots/
├── requirements.txt
└── README.md
```

## 🚀 Getting Started

### Prerequisites

- [Python 3.x / Node.js / Java] installed
- [Browser Driver - e.g., ChromeDriver] installed
- Access to the IMC application (local or deployed)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/noobcat0418/IMC-Testcases.git
   cd IMC-Testcases
   ```

2. Install dependencies:
   ```bash
   # For Python
   pip install -r requirements.txt
   
   # For Node.js
   npm install
   ```

3. Configure environment:
   ```bash
   # Copy and update the config file with your settings
   cp .env.example .env
   ```

### Running Tests

```bash
# Run all tests
pytest

# Run specific test module
pytest tests/test_authentication.py

# Run tests with specific marker
pytest -m "smoke"

# Run with verbose output
pytest -v

# Run and generate HTML report
pytest --html=reports/report.html
```

## ✅ Test Coverage

| Module | Test Cases | Description |
|--------|------------|-------------|
| Authentication | Login, Logout, Registration | User authentication flows |
| [Module 2] | [Test cases] | [Description] |
| [Module 3] | [Test cases] | [Description] |
| [Module 4] | [Test cases] | [Description] |

## 🏷️ Test Markers

```bash
# Run smoke tests (critical path)
pytest -m "smoke"

# Run regression tests
pytest -m "regression"

# Run specific feature tests
pytest -m "authentication"
```

## ⚙️ Configuration

Update the configuration in `config.py` or `.env`:

```python
BASE_URL = "https://your-imc-app-url.com"
BROWSER = "chrome"
HEADLESS = False
IMPLICIT_WAIT = 10
```

## 📊 Reports

Test execution reports are automatically generated in the `reports/` directory:
- **HTML Report:** Detailed test results with pass/fail status
- **Screenshots:** Captured on test failures for debugging

## 🔗 Related Repositories

- [IMC Application](https://github.com/noobcat0418/IMC) - Main application repository

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-test`)
3. Commit your changes (`git commit -m 'Add new test case'`)
4. Push to the branch (`git push origin feature/new-test`)
5. Open a Pull Request

## 📧 Contact

- GitHub: [@noobcat0418](https://github.com/noobcat0418)
