import React from 'react';
import Select from 'react-select';

export default class StyleSelect extends React.Component<ITypeSelectProps, ITypeSelectState> {
  constructor(props: ITypeSelectProps) {
    super(props)
    let selected: ITypeSelect | null = null;

    if (props.selectedType.length > 0) {
      selected = {
        value: props.selectedType,
        label: props.selectedType
      }
    }

    this.state = {
      selectedType: selected
    }
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
