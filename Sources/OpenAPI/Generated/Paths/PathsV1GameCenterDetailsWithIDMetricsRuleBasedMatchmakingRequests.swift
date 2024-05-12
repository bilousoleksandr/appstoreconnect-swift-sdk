// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterDetails.WithID.Metrics {
	public var ruleBasedMatchmakingRequests: RuleBasedMatchmakingRequests {
		RuleBasedMatchmakingRequests(path: path + "/ruleBasedMatchmakingRequests")
	}

	public struct RuleBasedMatchmakingRequests {
		/// Path: `/v1/gameCenterDetails/{id}/metrics/ruleBasedMatchmakingRequests`
		public let path: String

		public func get(parameters: GetParameters) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingAppRequestsV1MetricResponse> {
			Request(path: path, method: "GET", query: parameters.asQuery, id: "gameCenterDetails-ruleBasedMatchmakingRequests-get_metrics")
		}

		public struct GetParameters {
			public var limit: Int?
			public var granularity: Granularity
			public var groupBy: [GroupBy]?
			public var filterResult: FilterResult?
			public var sort: [Sort]?

			public enum Granularity: String, Codable, CaseIterable {
				case p1d = "P1D"
				case pt1h = "PT1H"
				case pt15m = "PT15M"
			}

			public enum GroupBy: String, Codable, CaseIterable {
				case result
			}

			public enum FilterResult: String, Codable, CaseIterable {
				case matched = "MATCHED"
				case canceled = "CANCELED"
				case expired = "EXPIRED"
			}

			public enum Sort: String, Codable, CaseIterable {
				case averageSecondsInQueue
				case minusaverageSecondsInQueue = "-averageSecondsInQueue"
				case count
				case minuscount = "-count"
				case p50SecondsInQueue
				case minusp50SecondsInQueue = "-p50SecondsInQueue"
				case p95SecondsInQueue
				case minusp95SecondsInQueue = "-p95SecondsInQueue"
			}

			public init(limit: Int? = nil, granularity: Granularity, groupBy: [GroupBy]? = nil, filterResult: FilterResult? = nil, sort: [Sort]? = nil) {
				self.limit = limit
				self.granularity = granularity
				self.groupBy = groupBy
				self.filterResult = filterResult
				self.sort = sort
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(limit, forKey: "limit")
				encoder.encode(granularity, forKey: "granularity")
				encoder.encode(groupBy, forKey: "groupBy")
				encoder.encode(filterResult, forKey: "filter[result]")
				encoder.encode(sort, forKey: "sort")
				return encoder.items
			}
		}
	}
}