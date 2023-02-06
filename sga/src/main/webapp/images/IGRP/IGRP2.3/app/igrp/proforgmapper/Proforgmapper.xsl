<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/><xsl:template match="/"><html><head><xsl:call-template name="IGRP-head"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/toolsbar/toolsbar.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/formlist/igrp.formlist.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/igrp.tables.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/dataTables.bootstrap.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.min.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.style.css?v={$version}"/><style/></head><body class="{$bodyClass} sidebar-off"><xsl:call-template name="IGRP-topmenu"/><form method="POST" class="IGRP-form" name="formular_default" enctype="multipart/form-data"><div class="container-fluid"><div class="row"><xsl:call-template name="IGRP-sidebar"/><div class="col-sm-9 col-md-10 col-md-offset-2 col-sm-offset-3 main" id="igrp-contents"><div class="content"><div class="row row-msg"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:apply-templates mode="igrp-messages" select="rows/content/messages"/></div></div></div><div class="row " id="row-db1a9826"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:if test="rows/content/sectionheader_1"><section class="content-header gen-container-item " gen-class="" item-name="sectionheader_1"><h2 class="disable-output-escaping"><xsl:value-of disable-output-escaping="yes" select="rows/content/sectionheader_1/fields/sectionheader_1_text/value"/></h2></section></xsl:if><xsl:if test="rows/content/form_1"><div class="box igrp-forms gen-container-item " gen-class="" item-name="form_1"><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_1/fields"/><xsl:if test="rows/content/form_1/fields/aplicacao_origem"><div class="col-sm-3 form-group  gen-fields-holder" item-name="aplicacao_origem" item-type="select" required="required"><label for="{rows/content/form_1/fields/aplicacao_origem/@name}"><xsl:value-of select="rows/content/form_1/fields/aplicacao_origem/label"/></label><select class="form-control select2 " id="form_1_aplicacao_origem" name="{rows/content/form_1/fields/aplicacao_origem/@name}" required="required"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/aplicacao_origem"/></xsl:call-template><xsl:for-each select="rows/content/form_1/fields/aplicacao_origem/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_1/fields/aplicacao_destino"><div class="col-sm-3 form-group  gen-fields-holder" item-name="aplicacao_destino" item-type="select" required="required"><label for="{rows/content/form_1/fields/aplicacao_destino/@name}"><xsl:value-of select="rows/content/form_1/fields/aplicacao_destino/label"/></label><select class="form-control select2 " id="form_1_aplicacao_destino" name="{rows/content/form_1/fields/aplicacao_destino/@name}" required="required"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/aplicacao_destino"/></xsl:call-template><xsl:for-each select="rows/content/form_1/fields/aplicacao_destino/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_1/fields/tipo"><div class="col-sm-3 form-group  gen-fields-holder" item-name="tipo" item-type="select" required="required"><label for="{rows/content/form_1/fields/tipo/@name}"><xsl:value-of select="rows/content/form_1/fields/tipo/label"/></label><select class="form-control select2 " id="form_1_tipo" name="{rows/content/form_1/fields/tipo/@name}" required="required"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/tipo"/></xsl:call-template><xsl:for-each select="rows/content/form_1/fields/tipo/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_1/tools-bar" mode="form-buttons"/></div></xsl:if><xsl:if test="rows/content/toolsbar_1"><div class="toolsbar-holder default gen-container-item " gen-structure="toolsbar" gen-fields=".btns-holder&gt;a.btn" gen-class="" item-name="toolsbar_1"><div class="btns-holder   pull-right" role="group"><xsl:apply-templates select="rows/content/toolsbar_1" mode="gen-buttons"><xsl:with-param name="vertical" select="'true'"/><xsl:with-param name="outline" select="'false'"/></xsl:apply-templates></div></div></xsl:if><xsl:if test="rows/content/formlist_1"><div class="box box-table-contents gen-container-item " gen-class="" item-name="formlist_1"><div class="box-body table-box"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/formlist_1/fields"/><table id="formlist_1" class="table table-striped gen-data-table  IGRP_formlist    " rel="T_formlist_1" data-control="data-formlist_1"><thead><tr><xsl:if test="rows/content/formlist_1/fields/perfilorganica_origem"><th td-name="perfilorganica_origem" align="" show-label="" class="text  gen-fields-holder" group-in=""><span><xsl:value-of select="rows/content/formlist_1/fields/perfilorganica_origem/label"/></span></th></xsl:if><xsl:if test="rows/content/formlist_1/fields/perfilorganica_destino"><th td-name="perfilorganica_destino" align="" show-label="" class="text  gen-fields-holder" group-in=""><span><xsl:value-of select="rows/content/formlist_1/fields/perfilorganica_destino/label"/></span></th></xsl:if><xsl:if test="not(rows/content/formlist_1/table/value/row[position() = 1]/@noupdate) or not(rows/content/formlist_1/table/value/row[position() = 1]/@nodelete)"><th class="table-btn add"><xsl:if test="not(rows/content/formlist_1/table/value/row[position() = 1]/@noupdate)"><a class="formlist-row-add btn btn-primary" rel="formlist_1" title="Add" data-toggle="tooltip" data-placement="left"><i class="fa fa-plus"/></a></xsl:if></th></xsl:if></tr></thead><tbody><xsl:for-each select="rows/content/formlist_1/table/value/row[not(@total='yes')]"><tr row="{position()}"><input type="hidden" name="p_formlist_1_id" value="{formlist_1_id}"/><xsl:apply-templates mode="form-hidden-fields" select="."/><xsl:if test="perfilorganica_origem"><xsl:if test="not(perfilorganica_origem/@visible)"><td align="" data-row="{position()}" data-title="{../../../fields/perfilorganica_origem/label}" class="text" item-name="perfilorganica_origem"><input type="hidden" name="{../../../fields/perfilorganica_origem/@name}_fk_desc" value="{perfilorganica_origem_desc}"/><div class="form-group" item-name="perfilorganica_origem" item-type="text"><input type="text" name="{../../../fields/perfilorganica_origem/@name}_fk" value="{perfilorganica_origem}" class="text form-control" rel="F_formlist_1" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/formlist_1/fields/perfilorganica_origem"/></xsl:call-template></input></div></td></xsl:if></xsl:if><xsl:if test="perfilorganica_destino"><xsl:if test="not(perfilorganica_destino/@visible)"><td align="" data-row="{position()}" data-title="{../../../fields/perfilorganica_destino/label}" class="text" item-name="perfilorganica_destino"><input type="hidden" name="{../../../fields/perfilorganica_destino/@name}_fk_desc" value="{perfilorganica_destino_desc}"/><div class="form-group" item-name="perfilorganica_destino" item-type="text"><input type="text" name="{../../../fields/perfilorganica_destino/@name}_fk" value="{perfilorganica_destino}" class="text form-control" rel="F_formlist_1" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/formlist_1/fields/perfilorganica_destino"/></xsl:call-template></input></div></td></xsl:if></xsl:if><xsl:if test="not(@nodelete) or not(@noupdate)"><td class="table-btn delete" data-row="{position()}"><xsl:if test="not(@nodelete)"><span class="formlist-row-remove btn btn-danger" rel="formlist_1" title="Remove" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-times"/></span></xsl:if></td></xsl:if></tr></xsl:for-each></tbody></table></div></div></xsl:if></div></div></div></div></div></div></div><xsl:call-template name="IGRP-bottom"/></form><script type="text/javascript" src="{$path}/core/igrp/form/igrp.forms.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/igrp.table.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/formlist/igrp.formlist.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/select2/select2.full.min.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/select2/select2.init.js?v={$version}"/><script src="{$path}/core/igrp/IGRP.rules.class.js"/><script>
$.IGRP.rules.set({"p_aplicacao_origem":[{"name":"rule_1","events":"change","isTable":false,"conditions":{"rules":[{"condition":"","value":"","value2":"","patern":"","patern_custom":"","opposite":""}],"actions":[{"action":"remote_combobox","targets":"aplicacao_destino","procedure":"webapps?r=igrp/Proforgmapper/AppOrigemDestino","request_fields":"aplicacao_origem","msg_type":"info","msg":""}]}}]},'actionsList');</script></body></html></xsl:template><xsl:include href="../../../xsl/tmpl/IGRP-functions.tmpl.xsl?v=2"/><xsl:include href="../../../xsl/tmpl/IGRP-variables.tmpl.xsl?v=2"/><xsl:include href="../../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=2"/><xsl:include href="../../../xsl/tmpl/IGRP-utils.tmpl.xsl?v=2"/><xsl:include href="../../../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=2"/><xsl:include href="../../../xsl/tmpl/IGRP-table-utils.tmpl.xsl?v=2"/></xsl:stylesheet>