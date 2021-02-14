parser grammar TParser;

options {

    // Default language but name it anyway
    //
    language  = Java;

    // Produce an AST
    //
    output    = AST;

    // Use the vocabulary generated by the accompanying
    // lexer. Maven knows how to work out the relationship
    // between the lexer and parser and will build the
    // lexer before the parser. It will also rebuild the
    // parser if the lexer changes.
    //
    tokenVocab = TLexer;
}

// Import a grammar file, even though it does not really need it in this
// simle demo parser. We do the import to show where imported grammars should be
// stored for maven builds.
//
import Ruleb;

// Some imaginary tokens for tree rewrites
//
tokens {
    SCRIPT;
}

// What package should the generated source exist in?
//
@header {

    package com.example.antlr;
}




// This is just a simple parser for demo purpose
//
a  : b* EOF

      -> ^(SCRIPT b*)
   ;



keyser
   : KEYSER^ SOZE
   ;

expression
   : addExpr (ADD^ addExpr)*
   ;

addExpr
   : ID
   | INT
   | STRING
   ;
