test_that("lonlat2UTM returns the right values:", {

  ## Apply the function and store the resuls
  # DWD Offenbach - should be: 32639
  epsg_utm_DWD <- lonlat2UTM(c(50.10267, 8.74782))
  # Aukland, New Zealand (where R was started!), should be: 32760
  epsg_utm_auk <- lonlat2UTM(c(174.7, -36.9))

  # tests
  expect_equal(epsg_utm_DWD, 32639)
  expect_equal(epsg_utm_auk, 32760)
})
