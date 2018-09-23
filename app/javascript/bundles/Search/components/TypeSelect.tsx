import React from 'react';
import Select from 'react-select';

const initialState: ITypeSelectState = {
  selectedType: null
}

export default class StyleSelect extends React.Component<ITypeSelectProps, ITypeSelectState> {
  constructor(props: ITypeSelectProps) {
    super(props)
    this.state = initialState;
  }

  handleChange = (selectedType: any) => {
    this.setState({ selectedType });
    this.props.setType(selectedType.value);
  }

  generateSelectNodes = () => {
    let nodes: any[] = this.props.types.map((styleResponse: any) => {
      let style: IBeerType = styleResponse['attributes'];
      let newNode: ITypeSelect = {
        label: `${style['name']}`,
        value: `${style['name']}`,
      }
      return newNode
    })
    // clear this specific search element
    let clear: any = {
      value: '',
      label: 'Clear'
    }

    nodes.unshift(clear);

    return nodes
  }

  render() {
    const selectedOption: ITypeSelect | null = this.state.selectedType;

    return (
      <Select
        value={selectedOption}
        onChange={this.handleChange}
        options={this.generateSelectNodes()}
        isSearchable
        id={this.props.type}
      />
    )
  }
}
