## AMR BIOINFORMATICS TRAINING MINIPROJECT
As part of the AMR Bioinformatics training at KEMRI; CMR ,this group has been  working on a mini-project to reproduce an assigned published Metagenomics paper.The details can be found [here.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7781581/)


### Group Members
1. Latifa Benta
2. Joseph Mugah
3. Brian Kimutai
   
### Supervisors/ Instructors
- Collins Kigen
- Vanessa Natasha
- James Wachira


### Overview Of the Metagenomics paper
**TITLE** : Metagenomics reveals impact of geography and acute diarrheal disease on Central Indian human gut microbiome

**AUTHORS** : *Tanya M Monaghan, Tim J Sloan, Stephen R Stockdale, Adam M Blanchard, Richard D Emes , Mark Wilcox, Rima Biswas , Rupam Nashine , Sonali Manke, Jinal Gandhi, Pratishtha Jain, Shrejal Bhotmange, Shrikant Ambalka, Ashish Satav, Lorraine A Draper, Colin Hill, Rajpal Singh Kashyap*

**ABSTRACT SUMMARY** : 

The human gut houses a complex microbial ecosystem referred to as the microbiome, which includes prokaryotic, eukaryotic and viral components. While the bacterial components of the microbiome have received considerable attention, comparatively little is known about the composition and physiological significance of human-gut associated bacteriophage populations, otherwise known as phageomes.

Although, most studies in the recent years have focused on the gut microbiome in rural pre-industrialized societies such as hunter-gatherer and other geographically diverse populations, little is known about microbial variability and it's implication for health and disease in other underrepresented populations in South America, Africa, and regions of Asia, particularly India, where there is scarcity of microbiome data in diarrheal and other populations.
In India, there is tremendous opportunity to study highly diverse communities with varied geographic distribution, dietary habits and socioeconomic stratification. The Central Indian gut microbiome remains grossly understudied. We seek to investigate the burden of antimicrobial resistance and diarrheal diseases,particularly *Clostridoides difficile*, in rural-agricultural and urban populations in Central India , where there is widespread unregulated antibiotic use. 

This study utilized shotgun metagenomics to comprehensively characterize the bacterial or viral fractions of the gut microbiome and their encoded functions in 105 participants.Raw data was submitted to the European Nucleotide Archive under the accession number [PRJNA564397](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA564397)

### A Summary of the Steps followed in our miniproject;
- Acquisition of the raw data
     - We made a text file containing the specific accession numbers.It can be found [here](https://github.com/LatifahBenta/Miniproject-Metagenomics/blob/main/Raw%20Data/SRA_accessions.txt)
     - **prefetch** -To download data from the SRA database.
     - **fasterq-dump**-To convert SRA format data into standard FASTQ format.
- Pre-processing of the raw data
     - Quality check using **Fastqc** and **Multiqc**
     - Trimming of the reads using **Trimmomatic**
     - Quality check after trimming using **Fastqc** and **Multiqc**
-  Read alignment and Taxonomic assignment using **kraken2** 
     - Align trimmed reads to a reference database to asign taxonomic labels
     - Use **kraken2** for taxonomic profiling
     - Visualize using **Krona**
-  Assembly using **Megahit**
     - Assemble reads into contigs
- Functional annotation using **Prokka**
     - Annotate genes and predict protein function
- Antimicrobial Resistance gene Identification
     - Search for AMR genes in the annotated data
- Data visualization using **Krona** 

### A summary report of the workflow is documented on the [Wiki page]()
