## Jets SQS Events Example

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

This project shows a simple SQS Events example with [Jets](http://rubyonjets.com/).

## Usage

    git clone https://github.com/tongueroo/jets-sqs-example demo
    cd demo
    bundle

## Deploy

Next, we'll deploy the app to AWS Lambda with [jets deploy](http://rubyonjets.com/reference/jets-deploy/).

    jets deploy

## Send Test Message

Here's an example of publishing a test message with the [aws sqs send-message](https://docs.aws.amazon.com/cli/latest/reference/sqs/send-message.html) cli.

    aws sqs send-message --queue-url https://sqs.us-west-2.amazonaws.com/112233445566/test-queue --message-body '{"test": "hello world"}'


Here's the blog article:

* Blog Post: []()

If you find Jets interesting, please it a GitHub star [tongueroo/jets](https://github.com/tongueroo/jets). It helps others find out about the project.  I'd appreciate it!
