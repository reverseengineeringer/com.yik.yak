.class final Lcom/parse/ParseFacebookUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;


# instance fields
.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/parse/ParseFacebookUtils$1;->val$user:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v1, v1}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 657
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, p1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    .line 650
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/parse/ParseFacebookUtils$1;->val$user:Lcom/parse/ParseUser;

    sget-object v1, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/FacebookAuthenticationProvider;

    invoke-virtual {v1}, Lcom/parse/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LN;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFacebookUtils$1;->val$callback:Lcom/parse/SaveCallback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;Z)LN;

    .line 643
    return-void
.end method
