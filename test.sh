docker run -it \
    -v ./vep_data/:/opt/vep/.vep \
    -v ./UTRAnnotator.pm:/opt/vep/.vep/Plugins/UTRAnnotator.pm \
    -v ./translational_efficiency.txt:/opt/vep/.vep/Plugins/translational_efficiency.txt \
    -v ./test.vcf:/opt/vep/.vep/input/test.vcf \
    ensemblorg/ensembl-vep \
    vep --cache \
    --dir /opt/vep/.vep \
    --fasta /opt/vep/.vep/homo_sapiens/111_GRCh38/Homo_sapiens.GRCh38.dna.toplevel.fa.gz \
    --dir_plugins /opt/vep/.vep/Plugins \
    --assembly GRCh38 \
    --species homo_sapiens \
    --mane_select \
    --force_overwrite \
    --pick \
    --pick_order mane_select,mane_plus_clinical \
    --mane \
    --canonical \
    --tab \
    --input_file /opt/vep/.vep/input/test.vcf \
    --output_file /opt/vep/.vep/output/output.txt \
    --plugin UTRAnnotator,file=/opt/vep/.vep/Plugins/translational_efficiency.txt
