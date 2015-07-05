.class final Lcom/parse/ParseUser$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;


# instance fields
.field final synthetic val$tcs:Lad;


# direct methods
.method constructor <init>(Lad;)V
    .locals 0

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/parse/ParseUser$22;->val$tcs:Lad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/parse/ParseUser$22;->val$tcs:Lad;

    invoke-virtual {v0}, Lad;->c()V

    .line 1443
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/parse/ParseUser$22;->val$tcs:Lad;

    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, p1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lad;->b(Ljava/lang/Exception;)V

    .line 1448
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/parse/ParseUser$22;->val$tcs:Lad;

    invoke-virtual {v0, p1}, Lad;->b(Ljava/lang/Object;)V

    .line 1438
    return-void
.end method
