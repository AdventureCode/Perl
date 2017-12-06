#!/usr/bin/perl
use strict;
use warnings;
use Term::ANSIColor;

print "\nQual seu nome: ";
chomp (my $nome = <STDIN> );
print color("green"),"\nOlá $nome, tenha um bom dia!",color("reset");
print "\nQual sua idade: ";
chomp (my $idade = <STDIN>);
print color("black"),"\n$nome você tem $idade anos!\n",color("reset");
my $nascimento = 2017 - $idade;
print color("blue"),"\nVocê nasceu em $nascimento\n", color("reset");

print color("red"), "\nInforme o nome do diretorio que deseja criar: ", color("reset");
chomp(my $diretorio = <STDIN>);
system("mkdir $diretorio");

print color("red"), "\nInforme o nome do arquivo que deseja criar: ", color("reset");
chomp(my $arquivo = <STDIN>);
open(my $file, ">","$diretorio/$arquivo");

print color("red") , "\nInforme o conteudo que deseja inserir no arquivo: ", color("reset");
chomp(my $conteudo = <STDIN>);
print $file "$conteudo";

exit;
