/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import Crashes from 'appcenter-crashes';
import Analytics from 'appcenter-analytics';
import {
  Button,
  StyleSheet,
  Text,
  TextInput,
  View
} from 'react-native';

import { Colors } from 'react-native/Libraries/NewAppScreen';

export default class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      inflationRate: 0.0,
      riskFreeRate: 0.0,
      amount: 0.0,
      timeInYears: 1,
      afterInflation: 0.0,
      atRiskFree: 0.0,
      atRiskFreeAfterInflation: 0.0,
      difference: 0
    }

    this.checkPreviousSession();
  }

  calculateInflationImpact(value, inflationRate, time) {
    return value / Math.pow(1+inflationRate, time);
  }

  calculate() {
    afterInflation = this.calculateInflationImpact(this.state.amount, this.state.inflationRate/100, this.state.timeInYears);
    atRiskFree = this.state.amount * Math.pow(1+this.state.riskFreeRate/100, this.state.timeInYears);
    atRiskFreeAfterInflation = this.calculateInflationImpact(atRiskFree, this.state.inflationRate/100, this.state.timeInYears);
    difference = atRiskFreeAfterInflation - afterInflation;

    this.setState({
      afterInflation,
      atRiskFree,
      atRiskFreeAfterInflation,
      difference
    });
  }

  async checkPreviousSession () {
    const didCrash = await Crashes.hasCrashedInLastSession();
    if(didCrash) {
      const report = await Crashes.lastSessionCrashReport();
      alert("Sorry about that crash, we're working on a solution");
    }
  }

  render() {
    return (
      <View style={styles.container}>
        <TextInput placeholder="Current inflation rate in your country"
                   style={styles.textBox} keyboardType='decimal-pad'
                   onChangeText={(inflationRate) => this.setState({inflationRate})}/>
        <TextInput placeholder="Current risk free rate"
                   style={styles.textBox} keyboardType='decimal-pad'
                   onChangeText={(riskFreeRate) => this.setState({riskFreeRate})}/>
        <Text style={styles.smallLabel}>The risk free rate is the one offered by your country's central bank.</Text>           
        <TextInput placeholder="Amount you are saving today"
                   style={styles.textBox} keyboardType='decimal-pad'
                   onChangeText={(amount) => this.setState({amount})}/>
        <TextInput placeholder="For how long (in years) will you save that?"
                   style={styles.textBox} keyboardType='decimal-pad'
                   onChangeText={(timeInYears) => this.setState({timeInYears})}/>
        <Button title="Calculate real value"
                onPress={() => {
                  this.calculate();
                  Analytics.trackEvent('calculate_inflation', { Internet: 'WiFi', GPS: 'Off' });
                }} />
        <Text style={styles.label}>{this.state.timeInYears} years from now you will still have ${parseFloat(this.state.amount).toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')}, but it will only be worth ${parseFloat(this.state.afterInflation).toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')}.</Text>
        <Text style={styles.label}>But if you invest it at a risk free rate you will have ${parseFloat(this.state.atRiskFree).toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')}.</Text>
        <Text style={styles.label}>Which will be worth ${parseFloat(this.state.atRiskFreeAfterInflation).toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')} after inflation.</Text>
        
      </View>
    );
  }
};

const styles = StyleSheet.create({
  container: {
    marginTop: 40,
    marginHorizontal: 16
  },
  label: {
    marginTop: 10
  },
  smallLabel: {
    marginTop: -8,
    marginBottom: 10,
    fontSize: 12,
    color: 'gray'
  },
  textBox: {
    height: 40,
    paddingLeft: 6,
    borderColor: 'gray',
    borderWidth: 1,
    marginBottom: 10,
    borderRadius: 5
  },
  scrollView: {
    backgroundColor: Colors.lighter,
  },
  engine: {
    position: 'absolute',
    right: 0,
  },
  body: {
    backgroundColor: Colors.white,
  },
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
    color: Colors.black,
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
    color: Colors.dark,
  },
  highlight: {
    fontWeight: '700',
  },
  footer: {
    color: Colors.dark,
    fontSize: 12,
    fontWeight: '600',
    padding: 4,
    paddingRight: 12,
    textAlign: 'right',
  },
});
