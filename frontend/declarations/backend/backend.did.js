export const idlFactory = ({ IDL }) => {
  return IDL.Service({ 'getRandomFact' : IDL.Func([], [IDL.Text], ['query']) });
};
export const init = ({ IDL }) => { return []; };
