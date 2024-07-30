import sys
import os

# Add current directory to path
sys.path.append(os.path.dirname(os.path.dirname(__file__)))

from robot import run_cli

if __name__ == "__main__":
    # Define current directory

    # Run tests and save results in results directory
    result = run_cli(["-d", "../results", "." ])
    sys.exit(result)