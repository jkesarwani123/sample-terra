module "test"{
  source="./module1"
  input_var=module.test_dummy.dummy
}

module "test_dummy"{
  source="./module2"

}