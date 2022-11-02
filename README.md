# DeveRamOverclock

## RAM Information

I currently have 4x 32gb Corsair RAM (only 3 shown in picture below):
![](images/3ramsticks.png)

Hynix 5.49 MJR

These should be safe for 1.45v

## Goal

My Goal is to overclock these to 3600mhz running semi decent timings.
I'd like to keep the voltages below the presumed safe limits to build in a bit more safety.

My limits:

| Setting | My Safe Voltage | Max Safe Voltage | Reasoning |
|:-------:|:---------------:|:----------------:|:---------:|
| VDDG IOD | 1.00v | 1.05v | 0.05v below the limit (This might be the same as the one below, I'm not sure) |
| VDDP | 1.00v | 1.05v | 0.05v below the limit |
| VDIMM | 1.40v | 1.45v | 0.05v below the limit |

## Progress
My current progress in overclocking RAM

| Step | Zentimings | TM5 | Description | Stable? |
|:----:|:----------:|:---:|:-----------:|:-------:|
| 1 | ![](benchmarks/Zen_1_3600error.png) | ![](benchmarks/TM5_1_Witherrors.png) | 3600mhz with increased primary timings | Unstable ~30 hours |
| 2 | ![](benchmarks/Zen_2_noerror.png) | ![](benchmarks/TM5_2.png) | Changed Setups and DrvStr | Stable ~11 hours |
| 3 | ![](benchmarks/Zen_3.png) | ![](benchmarks/TM5_3_tFAW_TRRDS_TRRDL.png) | TFAW 16 / TRRDS 4 / TRRDL 4 | Stable ~8 hours |
| 4 | ?? | ?? | ?? | ?? |
| 5 | ![](benchmarks/Zen_5_TRFC.png) | ![](benchmarks/TM5_5.png) | tRFC 388 | Stable ~8 hours |
| 6 | ![](benchmarks/Zen_6_tWTRS.png) | ![](benchmarks/TM5_6.png) | tWTRS 4 / tWTRL 10 | Unstable ~8 hours |
| 7 |  | ![](benchmarks/TM5_7.png) | Setups 59 50 50 | Unstable ~2 hours |
| 8 | ![](benchmarks/Zen_8_SetupsenVddp.png) | ![](benchmarks/TM5_8_4herror.png) | Setups 59 59 59 | Unstable ~9 hours |
| 9 | ![](benchmarks/Zen_9_Setups57_3Errors.png) | ![](benchmarks/TM5_9_3Errors11hours.png) | Setups 57 57 57 | Unstable 11 hours |
| 10 | ![](benchmarks/Zen_10_Setups55_0Errors.png) | ![](benchmarks/TM5_10_NoError18hours.png) ![](benchmarks/TM5_10_part2Errorsafter35hours.png) | Setups 55 55 55 | Unstable ~35 hours |
| 11 | ![](benchmarks/Zen_11_0_ErrorsSoFar.png) | ![](benchmarks/TM5_11_0ErrorsSoFar.png) ![](benchmarks/TM5_11_0ErrorsSoFar2.png) | Back to XMP | Stable ~40+ hours |

## Next steps

### Figuring out why I'm having errors

Ideas:

| # | Suggested by | Idea | My oppinion |
|:-:|:------------:|:----:|:-----------:|
| 1 | Krunk | VDDP to 0.95v / VDDG IOD to 1.05v | I don't like voltage playing but maybe I can try this |
| 2 | Kermit | Play with setups | Tried it but didn't really solve it (Only tried all setups same timing except 59 50 50) |
| 3 | Kermit | Play with DrvStr | Todo |
| 4 | Stoney | Maybe up the previous timings I tweaked???? (E.g. tRTP 8 ) | Todo |
| 5 | Devedse (me)  Rerun Benchmark 2 for longer to see if this was actually stable | Todo |
| 6 | Devedse (me) | Rerun XMP | Done, seemed to be stable |
| 7 | Kermit | Change ProcODT | Todo |
| 8 | Profile_name_1 | tRRDL 6 / tRTP 10 | Todo |
| 9 | Profile_name_1 | 3533 Mhz | Todo |
| 10 | | Play with GDM Disabled to see if you can figure out what causes instability | Tried, but not much was found |


## More usefull things

Guide:

https://github.com/integralfx/MemTestHelper/blob/oc-guide/DDR4%20OC%20Guide.md#tightening-timings

RFC Timings:

![](images/tRFC_v21.png)

Speed increase per setting:

![](images/speedincrease.png)