import { objectType } from 'nexus';

export const Response = objectType({
  name: 'Response',
  definition(t) {
    t.nonNull.boolean('success');
    t.string('message');
  },
});
