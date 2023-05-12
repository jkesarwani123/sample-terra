resource "aws_ssm_parameter" "jkparameter2" {
  name = "test.test2"
  value = "jk123"
  type = "String"

}