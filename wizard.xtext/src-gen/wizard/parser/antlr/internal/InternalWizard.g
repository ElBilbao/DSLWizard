/*
 * generated by Xtext 2.21.0
 */
grammar InternalWizard;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package wizard.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package wizard.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import wizard.services.WizardGrammarAccess;

}

@parser::members {

 	private WizardGrammarAccess grammarAccess;

    public InternalWizardParser(TokenStream input, WizardGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Wizard";
   	}

   	@Override
   	protected WizardGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleWizard
entryRuleWizard returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getWizardRule()); }
	iv_ruleWizard=ruleWizard
	{ $current=$iv_ruleWizard.current; }
	EOF;

// Rule Wizard
ruleWizard returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Wizard'
		{
			newLeafNode(otherlv_0, grammarAccess.getWizardAccess().getWizardKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getWizardAccess().getTituloEStringParserRuleCall_1_0());
				}
				lv_titulo_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getWizardRule());
					}
					set(
						$current,
						"titulo",
						lv_titulo_1_0,
						"wizard.Wizard.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getWizardAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getWizardAccess().getPaginasPaginaParserRuleCall_3_0());
				}
				lv_paginas_3_0=rulePagina
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getWizardRule());
					}
					add(
						$current,
						"paginas",
						lv_paginas_3_0,
						"wizard.Wizard.Pagina");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getWizardAccess().getPaginasPaginaParserRuleCall_4_0());
				}
				lv_paginas_4_0=rulePagina
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getWizardRule());
					}
					add(
						$current,
						"paginas",
						lv_paginas_4_0,
						"wizard.Wizard.Pagina");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleBoton
entryRuleBoton returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBotonRule()); }
	iv_ruleBoton=ruleBoton
	{ $current=$iv_ruleBoton.current; }
	EOF;

// Rule Boton
ruleBoton returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getBotonAccess().getNavegarParserRuleCall_0());
		}
		this_Navegar_0=ruleNavegar
		{
			$current = $this_Navegar_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getBotonAccess().getMostrarParserRuleCall_1());
		}
		this_Mostrar_1=ruleMostrar
		{
			$current = $this_Mostrar_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getBotonAccess().getCerrarParserRuleCall_2());
		}
		this_Cerrar_2=ruleCerrar
		{
			$current = $this_Cerrar_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleEString
entryRuleEString returns [String current=null]:
	{ newCompositeNode(grammarAccess.getEStringRule()); }
	iv_ruleEString=ruleEString
	{ $current=$iv_ruleEString.current.getText(); }
	EOF;

// Rule EString
ruleEString returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_STRING_0=RULE_STRING
		{
			$current.merge(this_STRING_0);
		}
		{
			newLeafNode(this_STRING_0, grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0());
		}
		    |
		this_ID_1=RULE_ID
		{
			$current.merge(this_ID_1);
		}
		{
			newLeafNode(this_ID_1, grammarAccess.getEStringAccess().getIDTerminalRuleCall_1());
		}
	)
;

// Entry rule entryRulePagina
entryRulePagina returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPaginaRule()); }
	iv_rulePagina=rulePagina
	{ $current=$iv_rulePagina.current; }
	EOF;

// Rule Pagina
rulePagina returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Pagina'
		{
			newLeafNode(otherlv_0, grammarAccess.getPaginaAccess().getPaginaKeyword_0());
		}
		(
			(
				(
					(
						lv_inicial_1_0='inicial'
						{
							newLeafNode(lv_inicial_1_0, grammarAccess.getPaginaAccess().getInicialInicialKeyword_1_0_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getPaginaRule());
							}
							setWithLastConsumed($current, "inicial", true, "inicial");
						}
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getPaginaAccess().getNameEStringParserRuleCall_1_0_1_0());
						}
						lv_name_2_0=ruleEString
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPaginaRule());
							}
							set(
								$current,
								"name",
								lv_name_2_0,
								"wizard.Wizard.EString");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getPaginaAccess().getNameEStringParserRuleCall_1_1_0());
					}
					lv_name_3_0=ruleEString
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPaginaRule());
						}
						set(
							$current,
							"name",
							lv_name_3_0,
							"wizard.Wizard.EString");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		otherlv_4=':'
		{
			newLeafNode(otherlv_4, grammarAccess.getPaginaAccess().getColonKeyword_2());
		}
		(
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getPaginaAccess().getCamposCampoParserRuleCall_3_0_0_0());
						}
						lv_campos_5_0=ruleCampo
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPaginaRule());
							}
							add(
								$current,
								"campos",
								lv_campos_5_0,
								"wizard.Wizard.Campo");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getPaginaAccess().getCamposCampoParserRuleCall_3_0_1_0());
						}
						lv_campos_6_0=ruleCampo
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPaginaRule());
							}
							add(
								$current,
								"campos",
								lv_campos_6_0,
								"wizard.Wizard.Campo");
							afterParserOrEnumRuleCall();
						}
					)
				)*
			)?
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getPaginaAccess().getCasillasCasillaParserRuleCall_3_1_0_0());
						}
						lv_casillas_7_0=ruleCasilla
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPaginaRule());
							}
							add(
								$current,
								"casillas",
								lv_casillas_7_0,
								"wizard.Wizard.Casilla");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getPaginaAccess().getCasillasCasillaParserRuleCall_3_1_1_0());
						}
						lv_casillas_8_0=ruleCasilla
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPaginaRule());
							}
							add(
								$current,
								"casillas",
								lv_casillas_8_0,
								"wizard.Wizard.Casilla");
							afterParserOrEnumRuleCall();
						}
					)
				)*
			)?
			(
				(
					{
						newCompositeNode(grammarAccess.getPaginaAccess().getBotonesBotonParserRuleCall_3_2_0());
					}
					lv_botones_9_0=ruleBoton
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPaginaRule());
						}
						add(
							$current,
							"botones",
							lv_botones_9_0,
							"wizard.Wizard.Boton");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getPaginaAccess().getBotonesBotonParserRuleCall_3_3_0());
					}
					lv_botones_10_0=ruleBoton
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPaginaRule());
						}
						add(
							$current,
							"botones",
							lv_botones_10_0,
							"wizard.Wizard.Boton");
						afterParserOrEnumRuleCall();
					}
				)
			)*
		)
	)
;

// Entry rule entryRuleCampo
entryRuleCampo returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCampoRule()); }
	iv_ruleCampo=ruleCampo
	{ $current=$iv_ruleCampo.current; }
	EOF;

// Rule Campo
ruleCampo returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Campo'
		{
			newLeafNode(otherlv_0, grammarAccess.getCampoAccess().getCampoKeyword_0());
		}
		(
			(
				lv_obligatorio_1_0='obligatorio'
				{
					newLeafNode(lv_obligatorio_1_0, grammarAccess.getCampoAccess().getObligatorioObligatorioKeyword_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCampoRule());
					}
					setWithLastConsumed($current, "obligatorio", true, "obligatorio");
				}
			)
		)?
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getCampoAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCampoAccess().getEtiquetaEStringParserRuleCall_3_0());
				}
				lv_etiqueta_3_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCampoRule());
					}
					set(
						$current,
						"etiqueta",
						lv_etiqueta_3_0,
						"wizard.Wizard.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleCasilla
entryRuleCasilla returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCasillaRule()); }
	iv_ruleCasilla=ruleCasilla
	{ $current=$iv_ruleCasilla.current; }
	EOF;

// Rule Casilla
ruleCasilla returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Casilla'
		{
			newLeafNode(otherlv_0, grammarAccess.getCasillaAccess().getCasillaKeyword_0());
		}
		(
			(
				lv_seleccionado_1_0='seleccionada'
				{
					newLeafNode(lv_seleccionado_1_0, grammarAccess.getCasillaAccess().getSeleccionadoSeleccionadaKeyword_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCasillaRule());
					}
					setWithLastConsumed($current, "seleccionado", true, "seleccionada");
				}
			)
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getCasillaAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCasillaRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"wizard.Wizard.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=':'
		{
			newLeafNode(otherlv_3, grammarAccess.getCasillaAccess().getColonKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCasillaAccess().getEtiquetaEStringParserRuleCall_4_0());
				}
				lv_etiqueta_4_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCasillaRule());
					}
					set(
						$current,
						"etiqueta",
						lv_etiqueta_4_0,
						"wizard.Wizard.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_5='destino'
			{
				newLeafNode(otherlv_5, grammarAccess.getCasillaAccess().getDestinoKeyword_5_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getCasillaRule());
						}
					}
					{
						newCompositeNode(grammarAccess.getCasillaAccess().getNuevoDestinoPaginaCrossReference_5_1_0());
					}
					ruleEString
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleNavegar
entryRuleNavegar returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNavegarRule()); }
	iv_ruleNavegar=ruleNavegar
	{ $current=$iv_ruleNavegar.current; }
	EOF;

// Rule Navegar
ruleNavegar returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Navegar'
		{
			newLeafNode(otherlv_0, grammarAccess.getNavegarAccess().getNavegarKeyword_0());
		}
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getNavegarAccess().getColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getNavegarAccess().getEtiquetaEStringParserRuleCall_2_0());
				}
				lv_etiqueta_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getNavegarRule());
					}
					set(
						$current,
						"etiqueta",
						lv_etiqueta_2_0,
						"wizard.Wizard.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getNavegarRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getNavegarAccess().getDestinoPaginaCrossReference_3_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_4='dependencias'
			{
				newLeafNode(otherlv_4, grammarAccess.getNavegarAccess().getDependenciasKeyword_4_0());
			}
			otherlv_5='{'
			{
				newLeafNode(otherlv_5, grammarAccess.getNavegarAccess().getLeftCurlyBracketKeyword_4_1());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getNavegarRule());
						}
					}
					{
						newCompositeNode(grammarAccess.getNavegarAccess().getCasillasCasillaCrossReference_4_2_0());
					}
					ruleEString
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_7=','
				{
					newLeafNode(otherlv_7, grammarAccess.getNavegarAccess().getCommaKeyword_4_3_0());
				}
				(
					(
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getNavegarRule());
							}
						}
						{
							newCompositeNode(grammarAccess.getNavegarAccess().getCasillasCasillaCrossReference_4_3_1_0());
						}
						ruleEString
						{
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
			otherlv_9='}'
			{
				newLeafNode(otherlv_9, grammarAccess.getNavegarAccess().getRightCurlyBracketKeyword_4_4());
			}
		)?
	)
;

// Entry rule entryRuleMostrar
entryRuleMostrar returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMostrarRule()); }
	iv_ruleMostrar=ruleMostrar
	{ $current=$iv_ruleMostrar.current; }
	EOF;

// Rule Mostrar
ruleMostrar returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Mostrar:'
		{
			newLeafNode(otherlv_0, grammarAccess.getMostrarAccess().getMostrarKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMostrarAccess().getEtiquetaEStringParserRuleCall_1_0());
				}
				lv_etiqueta_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMostrarRule());
					}
					set(
						$current,
						"etiqueta",
						lv_etiqueta_1_0,
						"wizard.Wizard.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='diciendo'
		{
			newLeafNode(otherlv_2, grammarAccess.getMostrarAccess().getDiciendoKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMostrarAccess().getMensajeEStringParserRuleCall_3_0());
				}
				lv_mensaje_3_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMostrarRule());
					}
					set(
						$current,
						"mensaje",
						lv_mensaje_3_0,
						"wizard.Wizard.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleCerrar
entryRuleCerrar returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCerrarRule()); }
	iv_ruleCerrar=ruleCerrar
	{ $current=$iv_ruleCerrar.current; }
	EOF;

// Rule Cerrar
ruleCerrar returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Cerrar:'
		{
			newLeafNode(otherlv_0, grammarAccess.getCerrarAccess().getCerrarKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCerrarAccess().getEtiquetaEStringParserRuleCall_1_0());
				}
				lv_etiqueta_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCerrarRule());
					}
					set(
						$current,
						"etiqueta",
						lv_etiqueta_1_0,
						"wizard.Wizard.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
