# Driver for gw1000

Uses direct fetch via TCP.

Home: https://github.com/gjr80/weewx-gw1000

## Install (Manually)

    -   download the GW1000 driver extension package:

            $ wget -P /var/tmp https://github.com/gjr80/weewx-gw1000/releases/download/v0.2.0/gw1000-0.2.0.tar.gz

    -   extract the contents of the GW1000 driver extension package:
    
            $ tar -xzf /var/tmp/gw1000-0.2.0.tar.gz -C /var/tmp
     
    -   copy the file *gw1000.py* to the *BIN_ROOT/user* directory:
    
            $ cp /var/tmp/gw1000/bin/user/gw1000.py BIN_ROOT/user

        **Note:** Depending on your system/installation the above command may need to be prefixed with *sudo*.

    -   add the following stanza to *weewx.conf*:

            [GW1000]
                # This section is for the GW1000
            
                # The driver itself
                driver = user.gw1000

    -   add the following stanza to *weewx.conf*:

            [Accumulator]
                [[lightning_strike_count]]
                    extractor = sum
                [[lightning_last_det_time]]
                    extractor = last
                [[lightning_distance]]
                    extractor = last
                [[daymaxwind]]
                    extractor = last
                [[stormRain]]
                    extractor = last
                [[hourRain]]
                    extractor = last
                [[dayRain]]
                    extractor = last
                [[weekRain]]
                    extractor = last
                [[monthRain]]
                    extractor = last
                [[yearRain]]
                    extractor = last
                [[totalRain]]
                    extractor = last
                [[pm2_51_24h_avg]]
                    extractor = last
                [[pm2_52_24h_avg]]
                    extractor = last
                [[pm2_53_24h_avg]]
                    extractor = last
                [[pm2_54_24h_avg]]
                    extractor = last
                [[pm2_55_24h_avg]]
                    extractor = last
                [[pm10_24h_avg]]
                    extractor = last
                [[co2_24h_avg]]
                    extractor = last
                [[wh40_batt]]
                    extractor = last
                [[wh26_batt]]
                    extractor = last
                [[wh25_batt]]
                    extractor = last
                [[wh65_batt]]
                    extractor = last
                [[wh31_ch1_batt]]
                    extractor = last
                [[wh31_ch2_batt]]
                    extractor = last
                [[wh31_ch3_batt]]
                    extractor = last
                [[wh31_ch4_batt]]
                    extractor = last
                [[wh31_ch5_batt]]
                    extractor = last
                [[wh31_ch6_batt]]
                    extractor = last
                [[wh31_ch7_batt]]
                    extractor = last
                [[wh31_ch8_batt]]
                    extractor = last
                [[wh41_ch1_batt]]
                    extractor = last
                [[wh41_ch2_batt]]
                    extractor = last
                [[wh41_ch3_batt]]
                    extractor = last
                [[wh41_ch4_batt]]
                    extractor = last
                [[wh45_batt]]
                    extractor = last
                [[wh51_ch1_batt]]
                    extractor = last
                [[wh51_ch2_batt]]
                    extractor = last
                [[wh51_ch3_batt]]
                    extractor = last
                [[wh51_ch4_batt]]
                    extractor = last
                [[wh51_ch5_batt]]
                    extractor = last
                [[wh51_ch6_batt]]
                    extractor = last
                [[wh51_ch7_batt]]
                    extractor = last
                [[wh51_ch8_batt]]
                    extractor = last
                [[wh51_ch9_batt]]
                    extractor = last
                [[wh51_ch10_batt]]
                    extractor = last
                [[wh51_ch11_batt]]
                    extractor = last
                [[wh51_ch12_batt]]
                    extractor = last
                [[wh51_ch13_batt]]
                    extractor = last
                [[wh51_ch14_batt]]
                    extractor = last
                [[wh51_ch15_batt]]
                    extractor = last
                [[wh51_ch16_batt]]
                    extractor = last
                [[wh55_ch1_batt]]
                    extractor = last
                [[wh55_ch2_batt]]
                    extractor = last
                [[wh55_ch3_batt]]
                    extractor = last
                [[wh55_ch4_batt]]
                    extractor = last
                [[wh57_batt]]
                    extractor = last
                [[wh68_batt]]
                    extractor = last
                [[ws80_batt]]
                    extractor = last
                [[wh40_sig]]
                    extractor = last
                [[wh26_sig]]
                    extractor = last
                [[wh25_sig]]
                    extractor = last
                [[wh65_sig]]
                    extractor = last
                [[wh31_ch1_sig]]
                    extractor = last
                [[wh31_ch2_sig]]
                    extractor = last
                [[wh31_ch3_sig]]
                    extractor = last
                [[wh31_ch4_sig]]
                    extractor = last
                [[wh31_ch5_sig]]
                    extractor = last
                [[wh31_ch6_sig]]
                    extractor = last
                [[wh31_ch7_sig]]
                    extractor = last
                [[wh31_ch8_sig]]
                    extractor = last
                [[wh41_ch1_sig]]
                    extractor = last
                [[wh41_ch2_sig]]
                    extractor = last
                [[wh41_ch3_sig]]
                    extractor = last
                [[wh41_ch4_sig]]
                    extractor = last
                [[wh45_sig]]
                    extractor = last
                [[wh51_ch1_sig]]
                    extractor = last
                [[wh51_ch2_sig]]
                    extractor = last
                [[wh51_ch3_sig]]
                    extractor = last
                [[wh51_ch4_sig]]
                    extractor = last
                [[wh51_ch5_sig]]
                    extractor = last
                [[wh51_ch6_sig]]
                    extractor = last
                [[wh51_ch7_sig]]
                    extractor = last
                [[wh51_ch8_sig]]
                    extractor = last
                [[wh51_ch9_sig]]
                    extractor = last
                [[wh51_ch10_sig]]
                    extractor = last
                [[wh51_ch11_sig]]
                    extractor = last
                [[wh51_ch12_sig]]
                    extractor = last
                [[wh51_ch13_sig]]
                    extractor = last
                [[wh51_ch14_sig]]
                    extractor = last
                [[wh51_ch15_sig]]
                    extractor = last
                [[wh51_ch16_sig]]
                    extractor = last
                [[wh55_ch1_sig]]
                    extractor = last
                [[wh55_ch2_sig]]
                    extractor = last
                [[wh55_ch3_sig]]
                    extractor = last
                [[wh55_ch4_sig]]
                    extractor = last
                [[wh57_sig]]
                    extractor = last
                [[wh68_sig]]
                    extractor = last
                [[ws80_sig]]
                    extractor = last

        **Note:** If an *[Accumulator]* stanza already exists in *weewx.conf* just add the child settings.

    4.  Confirm that WeeWX is set to use software [record generation](http://weewx.com/docs/usersguide.htm#record_generation). In *weewx.conf* under *[StdArchive]* ensure the *record_generation* setting is set to *software*:
        
            [StdArchive]
                ....
                record_generation = software
        
        If *record_generation* is set to *hardware* change it to *software*.

## Try out

/opt/weewx/weewxinst# python -m weewx.drivers.gw1000 --discover
