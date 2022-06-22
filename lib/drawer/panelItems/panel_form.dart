import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_form/es_animated_checkbox.dart';
import 'package:es_flutter_component/es_form/es_checkbox.dart';
import 'package:es_flutter_component/es_form/es_checkbox_vallidation.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_android_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_cupertino_12h_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_cupertino_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_english_date_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_persian_date_picker.dart';
import 'package:es_flutter_component/es_form/es_drop_down_button.dart';
import 'package:es_flutter_component/es_form/es_file_picker/es_file_picker.dart';

import 'package:es_flutter_component/es_form/es_ordinary_slider.dart';
import 'package:es_flutter_component/es_form/es_phone_number_field.dart';
import 'package:es_flutter_component/es_form/es_price_field.dart';
import 'package:es_flutter_component/es_form/es_radio_button.dart';
import 'package:es_flutter_component/es_form/es_ranged_slider.dart';
import 'package:es_flutter_component/es_form/es_rating_bar.dart';
import 'package:es_flutter_component/es_form/es_shaba_number_field.dart';
import 'package:es_flutter_component/es_form/es_text_area.dart';
import 'package:es_flutter_component/es_form/es_text_field.dart';
import 'package:es_flutter_component/es_form/es_toggle_button.dart';
import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_marked_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_panel_skeleton/images/panelConstants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../images/panelConstants.dart';

class PanelForm extends StatelessWidget {
  const PanelForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      _listItem(
          EsTextField(
            type: AppLocalizations.of(context)!.textFieldType,
            hint: AppLocalizations.of(context)!.textFieldHint,
          ),
          AppLocalizations.of(context)!.textField,
          "It is a text field located in: \n es_flutter_component>lib>es_form>es_text_field.dart \n and is used as: \n "
              """ EsTextField(
            type: AppLocalizations.of(context)!.textFieldType,
            hint: AppLocalizations.of(context)!.textFieldHint,)"""
      ),
      _listItem(EsPhoneNumberField(),
          AppLocalizations.of(context)!.phoneNumbertextField,
          "It is a phone number field located in: \n es_flutter_component>lib>es_form>es_phone_number_field.dart \n and is used as: \n "
              """ EsPhoneNumberField()"""
      ),
      _listItem(EsShabaNumberField(),
          AppLocalizations.of(context)!.shabaNumbertextField,
          "It is a shaba number field located in: \n es_flutter_component>lib>es_form>es_shaba_number_field.dart \n and is used as: \n "
              """ EsShabaNumberField()"""
      ),
      _listItem(EsPriceField(), AppLocalizations.of(context)!.priceTextField,
          "It is a price field located in: \n es_flutter_component>lib>es_form>es_price_field.dart \n and is used as: \n "
              """ EsPriceField()"""),
      _listItem(
          EsPersianDatePicker(
            title: AppLocalizations.of(context)!.datePickerTitle,
          ),
          AppLocalizations.of(context)!.datePickerfa,
          "It is a jalali date picker located in: \n es_flutter_component>lib>es_form>es_date_time_picker>es_persian_date_picker.dart \n and is used as: \n "
              """ EsPersianDatePicker()"""),
      _listItem(
          EsEnglishDatePicker(
            title: AppLocalizations.of(context)!.datePickerTitle,
          ),
          AppLocalizations.of(context)!.datePickeren,
          "It is a Gregorian date picker located in: \n es_flutter_component>lib>es_form>es_date_time_picker>es_English_date_picker.dart \n and is used as: \n "
              """ EsEnglishDatePicker()"""
      ),
      _listItem(
          EsAndroidTimePicker(
            title: AppLocalizations.of(context)!.androidTimePickerTitle,
          ),
          AppLocalizations.of(context)!.timePickerHM,
          "It is a time picker(H/M)  located in: \n es_flutter_component>lib>es_form>es_date_time_picker>es_android_time_picker.dart \n and is used as: \n "
              """ EsAndroidTimePicker(
            title: AppLocalizations.of(context)!.androidTimePickerTitle,)"""
      ),
      _listItem(
          EsCupertinoTimePicker(
            title: AppLocalizations.of(context)!.cupertinoTimePickerTitle,
          ),
          AppLocalizations.of(context)!.timePickerHMS,
          "It is a time picker(H/M/S) located in: \n es_flutter_component>lib>es_form>es_date_time_picker>es_cupertino_12h_time_picker.dart \n and is used as: \n "
              """ EsCupertinoTimePicker(
            title: AppLocalizations.of(context)!.cupertinoTimePickerTitle,)"""
      ),
      _listItem(EsOrdinarySlider(),
          AppLocalizations.of(context)!.ordinarySlider,
          "It is an ordinary slider located in: \n es_flutter_component>lib>es_form>es_ordinary_slider.dart \n and is used as: \n "
              """EsOrdinarySlider()"""
      ),
      _listItem(EsRengedSlider(), AppLocalizations.of(context)!.rangedSlider,
          "It is a ranged slider located in: \n es_flutter_component>lib>es_form>es_ranged_slider.dart \n and is used as: \n "
              """EsRengedSlider()"""
      ),
      _listItem(EsRadioButton(), AppLocalizations.of(context)!.radioButons,
          "It is a radio button located in: \n es_flutter_component>lib>es_form>es_radio_button.dart \n and is used as: \n "
              """EsRadioButton()"""
      ),
      _listItem(
          EsTextArea(
            type: AppLocalizations.of(context)!.textAreaType,
            hint: AppLocalizations.of(context)!.textAreaHint,
          ),
          AppLocalizations.of(context)!.textArea,
          "It is a text area located in: \n es_flutter_component>lib>es_form>es_text_area.dart \n and is used as: \n "
              """EsTextArea(
            type: AppLocalizations.of(context)!.textAreaType,
            hint: AppLocalizations.of(context)!.textAreaHint,)"""
      ),
      _listItem(EsRatingBar(), AppLocalizations.of(context)!.starRateBar,
          "It is a rating bar located in: \n es_flutter_component>lib>es_form>es_rating_bar.dart \n and is used as: \n "
              """EsRatingBar()"""
      ),
      _listItem(
          IntrinsicWidth(
            child: EsCheckBox(
              title: EsOrdinaryText(
                data: AppLocalizations.of(context)!.checkBoxTitle,
              ),
              onSaved: (bool) {},
              validator: (bool) {},
            ),
          ),
          AppLocalizations.of(context)!.ordinaryCheckBox,
          "It is a ordinary check box located in: \n es_flutter_component>lib>es_form>es_checkbox.dart \n and is used as: \n "
              """EsCheckBox(
              title: EsOrdinaryText(
                data: AppLocalizations.of(context)!.checkBoxTitle,
              ),
              onSaved: (bool) {},
              validator: (bool) {},)""",
      ),
      _listItem(
          IntrinsicWidth(
            child: EsCheckBoxvalidation(
              title: AppLocalizations.of(context)!.checkBoxWithValidator,
              errorText: AppLocalizations.of(context)!.checkBoxErrorText,
              buttonText: AppLocalizations.of(context)!.checkBoxButtonText,
            ),
          ),
          AppLocalizations.of(context)!.validationCheckBox,
          "It is a check box with validation located in: \n es_flutter_component>lib>es_form>es_checkbox_validation.dart \n and is used as: \n "
              """EsCheckBoxvalidation(
              title: AppLocalizations.of(context)!.checkBoxWithValidator,
              errorText: AppLocalizations.of(context)!.checkBoxErrorText,
              buttonText: AppLocalizations.of(context)!.checkBoxButtonText,
            )"""
      ),
      _listItem(
          IntrinsicWidth(
            child: EsAnimatedCheckBox(
                title: AppLocalizations.of(context)!.animatedCheckBoxTitle),
          ),
          AppLocalizations.of(context)!.animationCheckBox,
          "It is an animated check box located in: \n es_flutter_component>lib>es_form>es_animated_checkbox.dart \n and is used as: \n "
              """EsAnimatedCheckBox(
                title: AppLocalizations.of(context)!.animatedCheckBoxTitle)"""
      ),
      _listItem(
          EsDropDownButton(
            items: [
              // "گزینه1","گزینه2","گزینه3",
              AppLocalizations.of(context)!.dropDown1,
              AppLocalizations.of(context)!.dropDown2,
              AppLocalizations.of(context)!.dropDown3,
            ],
            onTapItems: [() {}, () {}, () {}],
          ),
          AppLocalizations.of(context)!.dropDownButton,
          "It is dropp down button located in: \n es_flutter_component>lib>es_form>es_drop_down_button.dart \n and is used as: \n "
              """EsDropDownButton(
            items: [
              AppLocalizations.of(context)!.dropDown1,
              AppLocalizations.of(context)!.dropDown2,
              AppLocalizations.of(context)!.dropDown3,
            ],
            onTapItems: [() {}, () {}, () {}],
          )"""
      ),
      _listItem(ESToggleButton(), AppLocalizations.of(context)!.toggleButton,
          "It is toggle button located in: \n es_flutter_component>lib>es_form>es_toggle_button.dart \n and is used as: \n "
              """ESToggleButton()"""
      ),
      _listItem(
          Center(
              child: EsFilePicker(
            openText: AppLocalizations.of(context)!.openText,
            pickText: AppLocalizations.of(context)!.pickText,
            clearText: AppLocalizations.of(context)!.clearText,
          )),
          AppLocalizations.of(context)!.filePicker,
          "It is file picker located in: \n es_flutter_component>lib>es_form>es_file picker.dart \n and is used as: \n "
              """EsFilePicker(
            openText: AppLocalizations.of(context)!.openText,
            pickText: AppLocalizations.of(context)!.pickText,
            clearText: AppLocalizations.of(context)!.clearText,
          )"""
      ),
    ];
    return Material(
        color: PanelConstants.backGround,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: PanelConstants.paddingDimension),
                margin: EdgeInsets.all(PanelConstants.paddingDimension * 2),

                width: double.maxFinite,
                ////////////////////////
                child: EsOrdinaryText(
                  data: AppLocalizations.of(context)!.formDescription,
                ),
                decoration: BoxDecoration(
                    color: PanelConstants.forGround,
                    borderRadius: BorderRadius.all(
                        Radius.circular(Constants.paddingDimension))),
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(PanelConstants.paddingDimension),
                  decoration: BoxDecoration(
                    color: PanelConstants.backGround,
                  ),
                  children: List.generate(
                      list.length, (index) => _boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget _boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6',
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: PanelConstants.paddingDimension,
            vertical: PanelConstants.paddingDimension,
          ),
          margin: EdgeInsets.all(PanelConstants.paddingDimension),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(PanelConstants.paddingDimension * 2)),
              color: PanelConstants.forGround),
          child: widget,
        ));
  }

  Widget _listItem(Widget widget, String title, String information) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: title,
                  size: 15,
                  color: PanelConstants.itemColor,
                ),
              ),
              EsInformationButton(
                dialogeText: information,

              ),
            ],
          ),
          SizedBox(
            height: PanelConstants.paddingDimension * 2,
          ),
          widget
        ],
      ),
    );
  }
}
