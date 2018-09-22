import React from 'react';
import Select from 'react-select';

const initialState: IStyleSelectState = {
  selectedStyle: null
}

export default class StyleSelect extends React.Component<IStyleSelectProps, IStyleSelectState> {
  constructor(props: IStyleSelectProps) {
    super(props)
    this.state = initialState;
  }

  handleChange = (selectedStyle: any) => {
    this.setState({ selectedStyle });
    this.props.setStyle(selectedStyle.value);
  }

  generateSelectNodes = () => {
    let nodes: any[] = this.props.beerStyles.map((styleResponse: any) => {
      let style: IBeerStyle = styleResponse['attributes'];
      let newNode: IStyleSelect = {
        label: `${style['name']}`,
        value: `${style['name']}`,
      }
      return newNode
    })

    return nodes
  }

  render() {
    const selectedOption: IStyleSelect | null = this.state.selectedStyle;

    return (
      <Select
        value={selectedOption}
        onChange={this.handleChange}
        options={this.generateSelectNodes()}
        isSearchable
        id='style'
      />
    )
  }
}
