// index 0 string
// index 1 number
// index 2 mail
// index 3 password

import 'package:startup_app/Services/globals.dart';
import 'package:startup_app/theme.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextBoxNormal extends StatefulWidget {
  final String? hint;
  final String? title;
  final String? value;
  final TextEditingController? tec;
  final int? index;
  final String? lang;
  final Widget? prefix;
  final Widget? suffix;
  final bool? requerd;
  final int? maxChar;
  final String? changeAlignmet;
  Function(String val)? onChange;
  final bool? keyboardPadding;
  final bool countryPicker ;

  CustomTextBoxNormal(
      {this.hint,
      this.title,
      this.value,
      this.tec,
      this.index,
      this.lang,
      this.prefix,
      this.suffix,
      this.requerd,
      this.onChange,
      this.maxChar,
      this.changeAlignmet,
      this.keyboardPadding,
      this.countryPicker = false,
      });

  @override
  _CustomTextBoxNormalState createState() => _CustomTextBoxNormalState();
}

bool validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern as String);
  return (!regex.hasMatch(value)) ? false : true;
}

class _CustomTextBoxNormalState extends State<CustomTextBoxNormal> {
  @override
  Widget build(BuildContext context) {
    double bottomInsets = MediaQuery.of(context).viewInsets.bottom;
    bool changeAlignment = false;
    return Container(
        // height: height1,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(round)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.title != null
                ? Text(
                    widget.title!,
                    style: OwnColors.suitableBlack(widget.lang),
                  )
                : Container(),
            SizedBox(
              height: space1,
            ),
            Center(
              child: Row(
                children:[
                  widget.countryPicker ?
                  CountryPickerDropdown(
                    isExpanded: false,
                    iconSize: 0,
                    isDense: false,
                    initialValue: 'EG',
                    itemBuilder: _buildDropdownItem,
                    priorityList:[
                      CountryPickerUtils.getCountryByIsoCode('EG'),
                      CountryPickerUtils.getCountryByIsoCode('KW'),
                      CountryPickerUtils.getCountryByIsoCode('SA'),
                    ],
                    sortComparator: (Country a, Country b) => a.isoCode.compareTo(b.isoCode),
                    onValuePicked: (Country country) {
                      print("${country.name}");
                    },
                  ):
                      Container()
                  ,Expanded(
                    child: TextFormField(
                      scrollPadding: widget.keyboardPadding != null
                          ? widget.keyboardPadding!
                          ? EdgeInsets.only(bottom: bottomInsets + height1 * 2)
                          : EdgeInsets.only(bottom: bottomInsets)
                          : EdgeInsets.only(bottom: bottomInsets),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(widget.maxChar)
                      ],
                      obscureText: widget.index == 3 ? true : false,
                      controller: widget.tec,
                      keyboardType: widget.index == 1 || widget.index == 4
                          ? TextInputType.numberWithOptions()
                          : TextInputType.text,
                      onChanged: (val) {
                        widget.onChange!(val);
                      },
                      style: OwnColors.normalBlack(widget.lang),
                      decoration: InputDecoration(
                        //Good in space but not at all
                        // prefix: widget.prefix != null ? widget.prefix : null,
                        // suffix:widget.suffix != null ? widget.suffix :null ,

                          suffixIcon: widget.suffix != null ? widget.suffix : null,
                          prefixIcon: widget.prefix != null ? widget.prefix : null,
                          prefixStyle: OwnColors.normalBlackBold(widget.lang),
                          border: new OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(round),
                            ),
                          ),
                          fillColor: OwnColors.color2[300],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1.0, color: OwnColors.color2[100]!),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1.0, color: OwnColors.color2[500]!),
                          ),
                          errorBorder: OutlineInputBorder(
                            // borderSide: BorderSide(
                            //   width: 2.0,
                            //   color: Colors.red,
                            // ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(round),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(space1),
                          errorStyle: OwnColors.normalColor2(widget.lang),
                          hintText: widget.hint,
                          hintStyle: OwnColors.normalGrey(widget.lang)),
                      textAlign: widget.changeAlignmet == 'center'
                          ? TextAlign.center
                          : widget.changeAlignmet == '' ||
                          widget.changeAlignmet == null
                          ? widget.lang == 'en'
                          ? TextAlign.left
                          : TextAlign.right
                          : widget.changeAlignmet == 'ar'
                          ? TextAlign.right
                          : TextAlign.left,
                      textDirection:
                      widget.changeAlignmet != '' || widget.changeAlignmet != null
                          ? widget.changeAlignmet == 'ar'
                          ? TextDirection.rtl
                          : TextDirection.ltr
                          : widget.lang == 'en'
                          ? TextDirection.ltr
                          : TextDirection.rtl,
                    ),
                  ),
              ]

              ),
            ),
          ],
        ));

  }
  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );
}
