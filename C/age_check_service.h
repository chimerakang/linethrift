/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#ifndef AGE_CHECK_SERVICE_H
#define AGE_CHECK_SERVICE_H

#include <thrift/c_glib/processor/thrift_dispatch_processor.h>

#include "line_types.h"

/* AgeCheckService service interface */
typedef struct _AgeCheckServiceIf AgeCheckServiceIf;  /* dummy object */

struct _AgeCheckServiceIfInterface
{
  GTypeInterface parent;

  gboolean (*check_user_age) (AgeCheckServiceIf *iface, UserAgeType* _return, const CarrierCode carrier, const gchar * sessionId, const gchar * verifier, const gint32 standardAge, TalkException ** e, GError **error);
  gboolean (*check_user_age_with_docomo) (AgeCheckServiceIf *iface, AgeCheckDocomoResult ** _return, const gchar * openIdRedirectUrl, const gint32 standardAge, const gchar * verifier, TalkException ** e, GError **error);
  gboolean (*retrieve_open_id_auth_url_with_docomo) (AgeCheckServiceIf *iface, gchar ** _return, TalkException ** e, GError **error);
  gboolean (*retrieve_request_token) (AgeCheckServiceIf *iface, AgeCheckRequestResult ** _return, const CarrierCode carrier, TalkException ** e, GError **error);
};
typedef struct _AgeCheckServiceIfInterface AgeCheckServiceIfInterface;

GType age_check_service_if_get_type (void);
#define TYPE_AGE_CHECK_SERVICE_IF (age_check_service_if_get_type())
#define AGE_CHECK_SERVICE_IF(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_AGE_CHECK_SERVICE_IF, AgeCheckServiceIf))
#define IS_AGE_CHECK_SERVICE_IF(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_AGE_CHECK_SERVICE_IF))
#define AGE_CHECK_SERVICE_IF_GET_INTERFACE(inst) (G_TYPE_INSTANCE_GET_INTERFACE ((inst), TYPE_AGE_CHECK_SERVICE_IF, AgeCheckServiceIfInterface))

gboolean age_check_service_if_check_user_age (AgeCheckServiceIf *iface, UserAgeType* _return, const CarrierCode carrier, const gchar * sessionId, const gchar * verifier, const gint32 standardAge, TalkException ** e, GError **error);
gboolean age_check_service_if_check_user_age_with_docomo (AgeCheckServiceIf *iface, AgeCheckDocomoResult ** _return, const gchar * openIdRedirectUrl, const gint32 standardAge, const gchar * verifier, TalkException ** e, GError **error);
gboolean age_check_service_if_retrieve_open_id_auth_url_with_docomo (AgeCheckServiceIf *iface, gchar ** _return, TalkException ** e, GError **error);
gboolean age_check_service_if_retrieve_request_token (AgeCheckServiceIf *iface, AgeCheckRequestResult ** _return, const CarrierCode carrier, TalkException ** e, GError **error);

/* AgeCheckService service client */
struct _AgeCheckServiceClient
{
  GObject parent;

  ThriftProtocol *input_protocol;
  ThriftProtocol *output_protocol;
};
typedef struct _AgeCheckServiceClient AgeCheckServiceClient;

struct _AgeCheckServiceClientClass
{
  GObjectClass parent;
};
typedef struct _AgeCheckServiceClientClass AgeCheckServiceClientClass;

GType age_check_service_client_get_type (void);
#define TYPE_AGE_CHECK_SERVICE_CLIENT (age_check_service_client_get_type())
#define AGE_CHECK_SERVICE_CLIENT(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_AGE_CHECK_SERVICE_CLIENT, AgeCheckServiceClient))
#define AGE_CHECK_SERVICE_CLIENT_CLASS(c) (G_TYPE_CHECK_CLASS_CAST ((c), TYPE_AGE_CHECK_SERVICE_CLIENT, AgeCheckServiceClientClass))
#define AGE_CHECK_SERVICE_IS_CLIENT(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_AGE_CHECK_SERVICE_CLIENT))
#define AGE_CHECK_SERVICE_IS_CLIENT_CLASS(c) (G_TYPE_CHECK_CLASS_TYPE ((c), TYPE_AGE_CHECK_SERVICE_CLIENT))
#define AGE_CHECK_SERVICE_CLIENT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_AGE_CHECK_SERVICE_CLIENT, AgeCheckServiceClientClass))

gboolean age_check_service_client_check_user_age (AgeCheckServiceIf * iface, UserAgeType* _return, const CarrierCode carrier, const gchar * sessionId, const gchar * verifier, const gint32 standardAge, TalkException ** e, GError ** error);
gboolean age_check_service_client_send_check_user_age (AgeCheckServiceIf * iface, const CarrierCode carrier, const gchar * sessionId, const gchar * verifier, const gint32 standardAge, GError ** error);
gboolean age_check_service_client_recv_check_user_age (AgeCheckServiceIf * iface, UserAgeType* _return, TalkException ** e, GError ** error);
gboolean age_check_service_client_check_user_age_with_docomo (AgeCheckServiceIf * iface, AgeCheckDocomoResult ** _return, const gchar * openIdRedirectUrl, const gint32 standardAge, const gchar * verifier, TalkException ** e, GError ** error);
gboolean age_check_service_client_send_check_user_age_with_docomo (AgeCheckServiceIf * iface, const gchar * openIdRedirectUrl, const gint32 standardAge, const gchar * verifier, GError ** error);
gboolean age_check_service_client_recv_check_user_age_with_docomo (AgeCheckServiceIf * iface, AgeCheckDocomoResult ** _return, TalkException ** e, GError ** error);
gboolean age_check_service_client_retrieve_open_id_auth_url_with_docomo (AgeCheckServiceIf * iface, gchar ** _return, TalkException ** e, GError ** error);
gboolean age_check_service_client_send_retrieve_open_id_auth_url_with_docomo (AgeCheckServiceIf * iface, GError ** error);
gboolean age_check_service_client_recv_retrieve_open_id_auth_url_with_docomo (AgeCheckServiceIf * iface, gchar ** _return, TalkException ** e, GError ** error);
gboolean age_check_service_client_retrieve_request_token (AgeCheckServiceIf * iface, AgeCheckRequestResult ** _return, const CarrierCode carrier, TalkException ** e, GError ** error);
gboolean age_check_service_client_send_retrieve_request_token (AgeCheckServiceIf * iface, const CarrierCode carrier, GError ** error);
gboolean age_check_service_client_recv_retrieve_request_token (AgeCheckServiceIf * iface, AgeCheckRequestResult ** _return, TalkException ** e, GError ** error);
void age_check_service_client_set_property (GObject *object, guint property_id, const GValue *value, GParamSpec *pspec);
void age_check_service_client_get_property (GObject *object, guint property_id, GValue *value, GParamSpec *pspec);

/* AgeCheckService handler (abstract base class) */
struct _AgeCheckServiceHandler
{
  GObject parent;
};
typedef struct _AgeCheckServiceHandler AgeCheckServiceHandler;

struct _AgeCheckServiceHandlerClass
{
  GObjectClass parent;

  gboolean (*check_user_age) (AgeCheckServiceIf *iface, UserAgeType* _return, const CarrierCode carrier, const gchar * sessionId, const gchar * verifier, const gint32 standardAge, TalkException ** e, GError **error);
  gboolean (*check_user_age_with_docomo) (AgeCheckServiceIf *iface, AgeCheckDocomoResult ** _return, const gchar * openIdRedirectUrl, const gint32 standardAge, const gchar * verifier, TalkException ** e, GError **error);
  gboolean (*retrieve_open_id_auth_url_with_docomo) (AgeCheckServiceIf *iface, gchar ** _return, TalkException ** e, GError **error);
  gboolean (*retrieve_request_token) (AgeCheckServiceIf *iface, AgeCheckRequestResult ** _return, const CarrierCode carrier, TalkException ** e, GError **error);
};
typedef struct _AgeCheckServiceHandlerClass AgeCheckServiceHandlerClass;

GType age_check_service_handler_get_type (void);
#define TYPE_AGE_CHECK_SERVICE_HANDLER (age_check_service_handler_get_type())
#define AGE_CHECK_SERVICE_HANDLER(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_AGE_CHECK_SERVICE_HANDLER, AgeCheckServiceHandler))
#define IS_AGE_CHECK_SERVICE_HANDLER(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_AGE_CHECK_SERVICE_HANDLER))
#define AGE_CHECK_SERVICE_HANDLER_CLASS(c) (G_TYPE_CHECK_CLASS_CAST ((c), TYPE_AGE_CHECK_SERVICE_HANDLER, AgeCheckServiceHandlerClass))
#define IS_AGE_CHECK_SERVICE_HANDLER_CLASS(c) (G_TYPE_CHECK_CLASS_TYPE ((c), TYPE_AGE_CHECK_SERVICE_HANDLER))
#define AGE_CHECK_SERVICE_HANDLER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_AGE_CHECK_SERVICE_HANDLER, AgeCheckServiceHandlerClass))

gboolean age_check_service_handler_check_user_age (AgeCheckServiceIf *iface, UserAgeType* _return, const CarrierCode carrier, const gchar * sessionId, const gchar * verifier, const gint32 standardAge, TalkException ** e, GError **error);
gboolean age_check_service_handler_check_user_age_with_docomo (AgeCheckServiceIf *iface, AgeCheckDocomoResult ** _return, const gchar * openIdRedirectUrl, const gint32 standardAge, const gchar * verifier, TalkException ** e, GError **error);
gboolean age_check_service_handler_retrieve_open_id_auth_url_with_docomo (AgeCheckServiceIf *iface, gchar ** _return, TalkException ** e, GError **error);
gboolean age_check_service_handler_retrieve_request_token (AgeCheckServiceIf *iface, AgeCheckRequestResult ** _return, const CarrierCode carrier, TalkException ** e, GError **error);

/* AgeCheckService processor */
struct _AgeCheckServiceProcessor
{
  ThriftDispatchProcessor parent;

  /* protected */
  AgeCheckServiceHandler *handler;
  GHashTable *process_map;
};
typedef struct _AgeCheckServiceProcessor AgeCheckServiceProcessor;

struct _AgeCheckServiceProcessorClass
{
  ThriftDispatchProcessorClass parent;

  /* protected */
  gboolean (*dispatch_call) (ThriftDispatchProcessor *processor,
                             ThriftProtocol *in,
                             ThriftProtocol *out,
                             gchar *fname,
                             gint32 seqid,
                             GError **error);
};
typedef struct _AgeCheckServiceProcessorClass AgeCheckServiceProcessorClass;

GType age_check_service_processor_get_type (void);
#define TYPE_AGE_CHECK_SERVICE_PROCESSOR (age_check_service_processor_get_type())
#define AGE_CHECK_SERVICE_PROCESSOR(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_AGE_CHECK_SERVICE_PROCESSOR, AgeCheckServiceProcessor))
#define IS_AGE_CHECK_SERVICE_PROCESSOR(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_AGE_CHECK_SERVICE_PROCESSOR))
#define AGE_CHECK_SERVICE_PROCESSOR_CLASS(c) (G_TYPE_CHECK_CLASS_CAST ((c), TYPE_AGE_CHECK_SERVICE_PROCESSOR, AgeCheckServiceProcessorClass))
#define IS_AGE_CHECK_SERVICE_PROCESSOR_CLASS(c) (G_TYPE_CHECK_CLASS_TYPE ((c), TYPE_AGE_CHECK_SERVICE_PROCESSOR))
#define AGE_CHECK_SERVICE_PROCESSOR_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_AGE_CHECK_SERVICE_PROCESSOR, AgeCheckServiceProcessorClass))

#endif /* AGE_CHECK_SERVICE_H */