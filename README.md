# Rselenium-sample-lambdatest


This tutorial will help you automate your selenium tests using Rselenium on LambdaTest Cloud Selenium Grid. 
## Prerequisites for Rselenium tutorial
* **R and 
Rselenium** : Install R with [Homebrew](http://brew.sh/)
```
$ brew install R
```

* **LambdaTest Credentials**
   * Set LambdaTest username and access key in environment variables. It can be obtained from [LambdaTest Automation Dashboard](https://automation.lambdatest.com/)    
    example:
   - For linux/mac
    ```
    export LT_USERNAME="YOUR_USERNAME"
    export LT_ACCESS_KEY="YOUR ACCESS KEY"

    ```
    - For Windows
    ```
    set LT_USERNAME="YOUR_USERNAME"
    set LT_ACCESS_KEY="YOUR ACCESS KEY"

    ```


* **To install RSelenium from CRAN, run:**

```
> install.packages("RSelenium")
```


* **To start the test, run:**
```
$ Rscript todo-app.r 
```
