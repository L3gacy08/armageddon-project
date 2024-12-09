

resource "aws_wafv2_web_acl" "lionsdenASG_waf_acl" {
  name        = "lionsdenASG-web-acl"
  description = "Web ACL for lionsdenASG"
  scope       = "REGIONAL" # Use CLOUDFRONT for CloudFront
  default_action {
    allow {}
  }
  rule {
    name     = "IPBlockRule"
    priority = 1
    action {
      block {}
    }
    statement {
      ip_set_reference_statement {
        arn = aws_wafv2_ip_set.ip_block_list.arn
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "IPBlockRule"
      sampled_requests_enabled   = false
    }
  }
  rule {
    name     = "AWSManagedRulesKnownBadInputs"
    priority = 5
    override_action {
      none {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesKnownBadInputsRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "AWSManagedRulesKnownBadInputs"
      sampled_requests_enabled   = false
    }
  }
rule {
    name     = "AWSManagedRulesAmazonIpReputationList"
    priority = 3
    override_action {
      none {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesAmazonIpReputationList"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "AWSManagedRulesAmazonIpReputationList"
      sampled_requests_enabled   = false
    }
  }
rule {
    name     = "AWSManagedRulesAnonymousIpList"
    priority = 4
    override_action {
      none {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesAnonymousIpList"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "AWSManagedRulesAnonymousIpList"
      sampled_requests_enabled   = false
    }
  }
rule {
    name     = "AWSManagedRulesCommonRuleSet"
    priority = 2
    override_action {
      none {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "AWSManagedRulesCommonRuleSet"
      sampled_requests_enabled   = false
    }
  }
  rule {
    name     = "AWSManagedRulesLinuxRuleSet"
    priority = 6
    override_action {
      none {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesLinuxRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "AWSManagedRulesLinuxRuleSet"
      sampled_requests_enabled   = false
    }
  }
  visibility_config {
    cloudwatch_metrics_enabled = false
    metric_name                = "lionsdenASGWebACL"
    sampled_requests_enabled   = false
  }
  tags = {
    Name    = "lionsdenASG-web-acl"
    Service = "application1"
    Owner   = "Chewbacca"
    Planet  = "Mustafar"
  }
}
resource "aws_wafv2_ip_set" "ip_block_list" {
  name               = "ip-block-list"
  description        = "List of blocked IP addresses"
  scope              = "REGIONAL"
  ip_address_version = "IPV4"
addresses = [
    "1.188.0.0/16",
    "1.80.0.0/16",
    "101.144.0.0/16",
    "101.16.0.0/16"
]
 tags = {
    Name    = "ip-block-list"
    Service = "application1"
    Owner   = "Chewbacca"
    Planet  = "Mustafar"
  }
}
#Associate the WAF ACL with the ALB
resource "aws_wafv2_web_acl_association" "lionsdenASG_waf_alb_association" {
  resource_arn = aws_lb.lionsdenASG_alb.arn
  web_acl_arn  = aws_wafv2_web_acl.lionsdenASG_waf_acl.arn

  depends_on = [
    aws_lb.lionsdenASG_alb,
    aws_wafv2_web_acl.lionsdenASG_waf_acl,
  ]
}

#Create an SNS topic for notifications
resource "aws_sns_topic" "hello"{
  name = "Rico-knows"
}
#Subscribe an email to the SNS topic
resource "aws_sns_topic_subscription" "find_me"{
  topic_arn = aws_sns_topic.hello.arn
  protocol = "email"
  endpoint = "rob3016g@gmail.com" # your email address
}

resource "aws_autoscaling_notification" "example_notifications" {
  group_names = [aws_autoscaling_group.lionsdenASG_asg.name]
  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]
  topic_arn = aws_sns_topic.hello.arn
}

#AWS-AWSManagedRulesKnownBadInputsRuleSet
#AWS-AWSManagedRulesAmazonIpReputationList
#AWS-AWSManagedRulesAnonymousIpList
#AWS-AWSManagedRulesCommonRuleSet
#AWS-AWSManagedRulesLinuxRuleSet