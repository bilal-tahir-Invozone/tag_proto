defmodule Hashtagapi.UpdateHashtagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: String.t(),
          userid: String.t(),
          postid: String.t(),
          replyid: String.t(),
          tagged_user: String.t()
        }

  defstruct [:commentid, :userid, :postid, :replyid, :tagged_user]

  field :commentid, 1, type: :string
  field :userid, 2, type: :string
  field :postid, 3, type: :string
  field :replyid, 4, type: :string
  field :tagged_user, 5, type: :string
end

defmodule Hashtagapi.UpdateHashtagResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }

  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Hashtagapi.DeleteHashtagResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }

  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Hashtagapi.DeleteHashtagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: String.t(),
          postid: String.t(),
          replyid: String.t()
        }

  defstruct [:commentid, :postid, :replyid]

  field :commentid, 1, type: :string
  field :postid, 2, type: :string
  field :replyid, 3, type: :string
end

defmodule Hashtagapi.CreateHashtagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: String.t(),
          userid: String.t(),
          postid: String.t(),
          replyid: String.t(),
          tagged_user: String.t()
        }

  defstruct [:commentid, :userid, :postid, :replyid, :tagged_user]

  field :commentid, 1, type: :string
  field :userid, 2, type: :string
  field :postid, 3, type: :string
  field :replyid, 4, type: :string
  field :tagged_user, 5, type: :string
end

defmodule Hashtagapi.CreateHashtagResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: String.t(),
          userid: String.t(),
          postid: String.t(),
          replyid: String.t(),
          tagged_user: String.t()
        }

  defstruct [:commentid, :userid, :postid, :replyid, :tagged_user]

  field :commentid, 1, type: :string
  field :userid, 2, type: :string
  field :postid, 3, type: :string
  field :replyid, 4, type: :string
  field :tagged_user, 5, type: :string
end

defmodule Hashtagapi.GetHashtagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: String.t(),
          userid: String.t(),
          postid: String.t(),
          replyid: String.t()
        }

  defstruct [:commentid, :userid, :postid, :replyid]

  field :commentid, 1, type: :string
  field :userid, 2, type: :string
  field :postid, 3, type: :string
  field :replyid, 4, type: :string
end

defmodule Hashtagapi.GetHashtagResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: String.t(),
          userid: String.t(),
          postid: String.t(),
          replyid: String.t(),
          hashtag: String.t()
        }

  defstruct [:commentid, :userid, :postid, :replyid, :hashtag]

  field :commentid, 1, type: :string
  field :userid, 2, type: :string
  field :postid, 3, type: :string
  field :replyid, 4, type: :string
  field :hashtag, 5, type: :string
end

defmodule Hashtagapi.HashtagService.Service do
  @moduledoc false
  use GRPC.Service, name: "hashtagapi.HashtagService"

  rpc :CreateHashtag, Hashtagapi.CreateHashtagRequest, Hashtagapi.CreateHashtagResponse

  rpc :UpdateHashtag, Hashtagapi.UpdateHashtagRequest, Hashtagapi.UpdateHashtagResponse

  rpc :GetHashtag, Hashtagapi.GetHashtagRequest, Hashtagapi.GetHashtagResponse

  rpc :DeleteHashtag, Hashtagapi.DeleteHashtagRequest, Hashtagapi.DeleteHashtagResponse
end

defmodule Hashtagapi.HashtagService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Hashtagapi.HashtagService.Service
end
