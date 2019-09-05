/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import Crashes from 'appcenter-crashes';
import {
  Button,
  StyleSheet,
  View
} from 'react-native';

import { Colors } from 'react-native/Libraries/NewAppScreen';

export default class App extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <Button title="Crash"
                onPress={() => Crashes.generateTestCrash()} />
      </View>
    );
  }
};

const styles = StyleSheet.create({
  container: {
    marginTop: 40,
    marginHorizontal: 16
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
