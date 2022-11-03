# Data Files

## HWP_decay_profiles
This table lists the fraction of carbon in primary wood products remaining in end uses up to and after 100 years.   

**Source:** USFS General Technical Report NE-343 "Methods for Calculating Forest Ecosystem and Harvested Carbon With Standard Estimates for Forest Types of the United States", Smith et al. 2006. https://www.fs.usda.gov/treesearch/pubs/22954.		

## HWP_supersection_mixtures
This tables lists the wood products generated by FIA Supersection, expressed as fractions.   

**Source:** Climate Action Reserve Assessment Area Data, Batch 2.2 (October 16, 2019), https://www.climateactionreserve.org/how/protocols/forest/assessment-area-data/				

## car_mill_efficiencies_by_region

This table lists the average mill efficiencies for hardwood and softwood by region in the United States. Values are expressed as fractions.

**Source:** Climate Action Reserve Assessment Area Data, Batch 2.2 (October 16, 2019), https://www.climateactionreserve.org/how/protocols/forest/assessment-area-data/	

## growth_by_fldgrpcd

NCX takes the forest type that an FIA field crew assigns during measurement visits, and relabels them using broader groups of forest types. Within the FIA database, FORTYPCD and FLDTYPCD represent the same hierarchy of forest classification. They differ in how they are determined: FLDTYPCD (2.5.17) is assigned during the inventory visit by the USFS field foresters, FORTYPCD (2.5.16) is an algorithmic classification generated after the inventory. NCX derived a new categorical variable, FLDGRPCD, which is the field-assigned equivalent of TYPGRPCD. FLDGRPCD is determined by matching each FLDTYPCD record with the parent TYPGRPCD found in Appendix D of "The Forest Inventory and Analysis Database: Database Description and User Buide for Phase 2 (version 9.0). 

These are the descriptions of the column headers:
- fldgrpcd: Field group code, defined the same as USFS type group code
- annual_agb_recruitment_prop: median annual change in biomass due to recruitment of new stems
- annual_agb_mortality_prop: median annual change in biomass due to non-harvest mortality
- annual_agb_removal_prop: median annual change in biomass due to harvest
- mean_annual_growth_carbon_tons_per_ac_pct: median annual change in biomass due to growth on surviving stems
- annual_agb_net_change_prop: median annual net change in aboveground biomass
- the remaining columns match the above description but with 'sound volume' replacing 'biomass'. These are used as a proxy to estimate change in stand value

**Source:** Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Menlove, James; Christiansen, Glenn; Perry, Carol J.; Conkling, Barbara L. 2021. The Forest Inventory and Analysis Database: database description and user guide version 9.0 for Phase 2. U.S. Department of Agriculture, Forest Service. 1024 p. [Online]. Available at web address: https://www.fia.fs.usda.gov/library/database-documentation/current/ver90/FIADB%20User%20Guide%20P2_9-0-1_final.pdf.
								
							