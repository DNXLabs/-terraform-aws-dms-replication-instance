# Necessary for redshift as a target in dms
resource "aws_iam_role" "dms_redshift_role" {
  count = var.create_redshift_role ? 1 : 0
  name = "dms-access-for-endpoint" # need to use this name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "redshift.amazonaws.com"
      }
      Action = "sts:AssumeRole"
      },
      {
        Effect = "Allow"
        Principal = {
          Service = "dms.amazonaws.com"
        }
        Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "dms_role_attachment" {
  count = var.create_redshift_role ? 1 : 0
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDMSRedshiftS3Role"
  role       = aws_iam_role.dms_redshift_role[0].name
}

# Necessary for logging of dms TASK
resource "aws_iam_role" "dms_logging_role" {
  count = var.create_logging_role ? 1 : 0
  name = "dms-cloudwatch-logs-role" # need to use this name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "dms.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "dms_logging_role_attachment" {
  count = var.create_logging_role ? 1 : 0
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole"
  role       = aws_iam_role.dms_logging_role[0].name
}